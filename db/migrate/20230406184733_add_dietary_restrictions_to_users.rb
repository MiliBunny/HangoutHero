class AddDietaryRestrictionsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :dietary_restrictions, :string
  end
end
