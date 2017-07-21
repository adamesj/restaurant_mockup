class Restaurant < ActiveRecord::Base
  validates :name, :street_address, presence: true

  validates_format_of :zip_code, with: /\A\d{5}-\d{4}|\A\d{5}\z/, message: "should be 12345 or 12345-1234"

  belongs_to :user
  has_many :reservations
  has_many :categories
end