class User < ApplicationRecord
  has_many :flavor_notes_users
  has_many :flavor_notes, through: :flavor_notes_users
end
