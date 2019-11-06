class FlavorNote < ApplicationRecord
  has_many :flavor_notes_users
  has_many :users, through: :flavor_notes_users
  has_many :coffees_flavor_notes
  has_many :coffees, through: :coffees_flavor_notes
end
