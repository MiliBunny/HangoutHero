class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :title
      t.string :price
      t.string :category
      t.string :cuisine
      t.string :dietary_restrictions
      t.string :entertainment_type
      t.string :physical_activity
      t.string :shopping_venue

      t.timestamps
    end
  end
end
