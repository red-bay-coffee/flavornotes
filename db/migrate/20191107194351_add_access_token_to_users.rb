# frozen_string_literal: true

class AddAccessTokenToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :access_token, :string

    add_index :users, :access_token, unique: true
  end
end
