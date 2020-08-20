class Package < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :package_categories, dependent: :destroy
  has_many :categories, through: :package_categories
  geocoded_by :address

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :address, presence: true
  has_one_attached :photo
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description_and_address,
    against: [:name, :description, :address],
    using: {
      tsearch: { prefix: true }
    }
end
