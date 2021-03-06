# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180326155217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "body", null: false
    t.bigint "hotel_id"
    t.bigint "landmark_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_comments_on_hotel_id"
    t.index ["landmark_id"], name: "index_comments_on_landmark_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", null: false
    t.string "photo_url", null: false
    t.string "description"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name", null: false
    t.string "photo_url", null: false
    t.text "description", null: false
    t.string "location", null: false
    t.bigint "country_id"
    t.index ["country_id"], name: "index_hotels_on_country_id"
  end

  create_table "landmarks", force: :cascade do |t|
    t.string "name", null: false
    t.string "photo_url", null: false
    t.string "location", null: false
    t.text "description", null: false
    t.bigint "country_id"
    t.index ["country_id"], name: "index_landmarks_on_country_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
