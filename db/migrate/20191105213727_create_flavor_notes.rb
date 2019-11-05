class CreateFlavorNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :flavor_notes do |t|
      t.string :name

      t.timestamps
    end
  end
end
