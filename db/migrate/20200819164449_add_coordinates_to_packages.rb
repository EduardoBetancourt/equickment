class AddCoordinatesToPackages < ActiveRecord::Migration[6.0]
  def change
    add_column :packages, :latitude, :float
    add_column :packages, :longitude, :float
  end
end
