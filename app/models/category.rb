class Category < ApplicationRecord
  has_many :package_categories
  has_many :packages, through: :package_categories
  validates :name, presence: true, uniqueness: true
end
