class AddImageUrlToCoffee < ActiveRecord::Migration[6.0]
  def change
    change_table :coffees do |t|
      t.string :image_url
    end
  end
end
