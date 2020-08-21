class PackagesController < ApplicationController
  before_action :set_package, only: %i[show edit update destroy]

  def index
    @packages = Package.geocoded

    @markers = @packages.map do |package|
      {
        lat: package.latitude,
        lng: package.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { package: package })
      }
    end

    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query OR address ILIKE :query"
      @packages = Package.where("name ILIKE ? OR description ILIKE ? OR address ILIKE ?",
        "%#{params[:query]}%", "%#{params[:query]}%", "%#{params[:query]}%")
    else
      @packages = Package.all
    end


  end

  def show
    @booking = Booking.new
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
    params.require(:package).permit(:name, :price, :description, :address, photos: [], category_ids: [])
  end

  def set_package
    @package = Package.find(params[:id])
  end
end
