# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_06_185559) do
  create_table "places", force: :cascade do |t|
    t.string "title"
    t.string "price"
    t.string "category"
    t.string "cuisine"
    t.string "dietary_restrictions"
    t.string "entertainment_type"
    t.string "physical_activity"
    t.string "shopping_venue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.string "description"
  end

  create_table "user_preferences", force: :cascade do |t|
    t.binary "vehicle"
    t.string "price"
    t.string "cuisine"
    t.string "dietary_restrictions"
    t.string "entertainment_type"
    t.string "physical_activity"
    t.string "shopping_venue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_preference_id"
    t.string "physical_activity"
    t.string "cuisine"
    t.string "shopping_venue"
    t.string "dietary_restrictions"
    t.string "entertainment_type"
    t.string "price"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_preference_id"], name: "index_users_on_user_preference_id"
  end

  add_foreign_key "user_preferences", "users"
  add_foreign_key "users", "user_preferences"
end
