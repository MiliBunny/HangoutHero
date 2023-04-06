class AddPhysicalActivityToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :physical_activity, :string
  end
end
