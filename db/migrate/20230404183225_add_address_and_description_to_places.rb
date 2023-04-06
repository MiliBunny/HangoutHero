class AddAddressAndDescriptionToPlaces < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :address, :string
    add_column :places, :description, :string
  end
end
