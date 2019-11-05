class CreateCoffeesFlavorNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :coffees_flavor_notes do |t|
      t.references :coffee, null: false, foreign_key: true
      t.references :flavor_note, null: false, foreign_key: true

      t.timestamps
    end
  end
end
