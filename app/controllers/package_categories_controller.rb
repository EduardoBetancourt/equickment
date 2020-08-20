class PackageCategoriesController < ApplicationController
  def new
    @package = Package.find(params[:package_id])
    @package_category = PackageCategory.new
  end

  def create
    @package = Package.find(params[:package_id])
    @categories = Category.where(id: params[:package_category][:category])
    @categories.each do |category|
      package_category = PackageCategory.new
      package_category.package = @package
      package_category.category = category
      package_category.save
    end
    redirect_to package_path(@package)
  end
end
