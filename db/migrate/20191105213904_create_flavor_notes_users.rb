class CreateFlavorNotesUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :flavor_notes_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :flavor_note, null: false, foreign_key: true

      t.timestamps
    end
  end
end
