class FlavorNoteBag < ApplicationRecord
  belongs_to :user
  belongs_to :coffee
  belongs_to :flavor_note

  has_one_attached :bag_photo

  after_create :generate_photo

  has_secure_token :access_token

  def self.generate_unique_secure_token
    SecureRandom.base58[0, 8]
  end

  private

  def generate_photo
    photo_file = create_bag_photo
    bag_photo.attach(io: File.open(photo_file.path), filename: "#{user.access_token}_#{id}.png")
    photo_file.unlink
  end

  def write_on_bag(bag, text, x: 36, y: 0, size: 32)
    draw = Magick::Draw.new
    draw.annotate(bag, 0, 0, x, y, text) do
      self.font_family = 'Helvetica'
      self.fill = Magick::Pixel.from_hsla(20, 100, 1, 0.8) # 'black'
      self.pointsize = size
      self.font_weight = Magick::BoldWeight
      self.gravity = Magick::NorthGravity
    end
  end

  def write_coffee_name(bag, cur_y)
    words = coffee.name.split
    if words.length < 4
      write_on_bag(bag, words.join(' '), y: cur_y, size: 200)
    else
      write_on_bag(bag, words.first(2).join(' '), y: cur_y, size: 200)
      cur_y += 230
      write_on_bag(bag, words.last(2).join(' '), y: cur_y, size: 200)
    end

    cur_y + 230
  end

  def create_bag_photo
    bag = Magick::ImageList.new 'app/assets/images/blank_bag.jpg'
    cur_y = 1000
    write_on_bag(bag, user.name, y: cur_y, size: 200)
    cur_y += 270
    cur_y = write_coffee_name(bag, cur_y)
    notes = coffee.flavor_notes.map(&:name).sort_by(&:length)
    write_on_bag(bag, notes.first(2).join(' / '), y: cur_y, size: 100)
    cur_y += 130
    write_on_bag(bag, notes.last, y: cur_y, size: 100)
    Tempfile.new.tap do |temp_file|
      bag.write temp_file.path
    end
  end
end
