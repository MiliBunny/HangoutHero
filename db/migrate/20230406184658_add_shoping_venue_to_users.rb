class AddShopingVenueToUsers < ActiveRecord::Migration[7.0]
  def change
      add_column :users, :shopping_venue, :string
  end
end
