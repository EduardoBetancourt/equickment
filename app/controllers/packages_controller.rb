class PackagesController < ApplicationController
  before_action :set_package, only: %i[show edit update destroy]

  def index
    @packages = Package.all
  end

  def show
  end

  def new
    @package = Package.new
  end

  def create
    @package = Package.new(strong_params)
    @package.user = current_user
    if @package.save
      redirect_to package_path(@package)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @package.update(strong_params)
    if @package.save
      redirect_to package_path(@package)
    else
      render :edit
    end
  end

  def destroy
    @package.destroy
    redirect_to packages_path
  end

  private

  def strong_params
    params.require(:package).permit(:name, :price, :description)
  end

  def set_package
    @package = Package.find(params[:id])
  end
end
