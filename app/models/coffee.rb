class Coffee < ApplicationRecord
  has_many :coffees_flavor_notes
  has_many :flavor_notes, through: :coffees_flavor_notes
end
