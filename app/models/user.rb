class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :flavor_notes_users
  has_many :flavor_notes, through: :flavor_notes_users

  has_one_attached :album_cover_photo
end
