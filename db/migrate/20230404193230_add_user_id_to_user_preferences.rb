class AddUserIdToUserPreferences < ActiveRecord::Migration[7.0]
  def change
    add_column :user_preferences, :user_id, :integer, index: true
    add_foreign_key :user_preferences, :users, column: :user_id
  end
end
