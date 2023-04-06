class AddUserPreferenceIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :user_preference, null: true, foreign_key: true
  end
end
