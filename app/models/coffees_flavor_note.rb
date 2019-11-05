class CoffeesFlavorNote < ApplicationRecord
  belongs_to :coffee
  belongs_to :flavor_note
end
