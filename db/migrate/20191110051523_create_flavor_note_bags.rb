class CreateFlavorNoteBags < ActiveRecord::Migration[6.0]
  def change
    create_table :flavor_note_bags do |t|
      t.references :coffee, null: false, foreign_key: true
      t.references :flavor_note, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
