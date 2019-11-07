class Coffee < ApplicationRecord
  has_many :coffees_flavor_notes
  has_many :flavor_notes, through: :coffees_flavor_notes

  def self.find_by_flavor_note(flavor_note)
    CoffeesFlavorNote.where(flavor_note_id: flavor_note.id).sample.coffee
  end
end
