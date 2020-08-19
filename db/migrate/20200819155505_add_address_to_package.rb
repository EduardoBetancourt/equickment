class AddAddressToPackage < ActiveRecord::Migration[6.0]
  def change
    add_column :packages, :address, :string
  end
end
