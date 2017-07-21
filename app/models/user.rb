class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :restaurants
  has_many :reservations

  has_many :favorite_restaurants
  has_many :favorites, through: :favorite_restaurants, source: :restaurant
end
