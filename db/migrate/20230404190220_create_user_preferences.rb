class CreateUserPreferences < ActiveRecord::Migration[7.0]
  def change
    create_table :user_preferences do |t|
      t.binary :vehicle
      t.string :price
      t.string :cuisine
      t.string :dietary_restrictions
      t.string :entertainment_type
      t.string :physical_activity
      t.string :shopping_venue

      t.timestamps
    end
  end
end
