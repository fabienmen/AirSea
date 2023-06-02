class AddAddAddressToBoats < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :address, :string
    add_column :boats, :latitude, :float
    add_column :boats, :longitude, :float
  end
end
