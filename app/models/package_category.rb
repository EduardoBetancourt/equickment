class PackageCategory < ApplicationRecord
  belongs_to :package
  belongs_to :category

  validates_uniqueness_of :package, :scope => [:category]
end
