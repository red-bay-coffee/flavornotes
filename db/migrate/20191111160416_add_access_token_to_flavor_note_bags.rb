class AddAccessTokenToFlavorNoteBags < ActiveRecord::Migration[6.0]
  def change
    add_column :flavor_note_bags, :access_token, :string

    add_index :flavor_note_bags, :access_token, unique: true
  end
end
