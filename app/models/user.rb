# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  has_many :flavor_notes_users
  has_many :flavor_notes, through: :flavor_notes_users
  has_many :flavor_note_bags

  has_one_attached :album_cover_photo

  has_secure_token :access_token

  def self.generate_unique_secure_token
    SecureRandom.base58[0, 8]
  end

  def create_flavor_note_bag
    suggested_coffee = Coffee.find_by_flavor_note(flavor_notes.first)
    flavor_note_bags.create(flavor_note: flavor_notes.first, coffee: suggested_coffee)
  end
end
