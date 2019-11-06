class FlavorNotesUser < ApplicationRecord
  belongs_to :user
  belongs_to :flavor_note
end
