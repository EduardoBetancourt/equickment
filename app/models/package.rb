class Package < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :address

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :address, presence: true
  has_one_attached :photo
  after_validation :geocode, if: :will_save_change_to_address?
end
