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

ActiveRecord::Schema.define(version: 2021_12_06_110953) do

  create_table "regions", charset: "utf8mb3", force: :cascade do |t|
    t.string "nearest_city", null: false
    t.string "country", null: false
    t.string "country_code", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tokens", charset: "utf8mb3", force: :cascade do |t|
    t.string "value", null: false
    t.boolean "admin_status", default: false, null: false
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tokens_on_user_id"
    t.index ["value"], name: "index_tokens_on_value", unique: true
  end

  create_table "tourbases", charset: "utf8mb3", force: :cascade do |t|
    t.string "name", null: false
    t.integer "max_capacity", null: false
    t.integer "current_capacity", null: false
    t.float "lat"
    t.float "lon"
    t.integer "region_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_tourbases_on_region_id"
  end

  create_table "tourists", charset: "utf8mb3", force: :cascade do |t|
    t.string "firstname", null: false
    t.string "lastname"
    t.string "email"
    t.integer "age", default: 14, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "tour_id"
    t.index ["email"], name: "index_tourists_on_email", unique: true
  end

  create_table "tours", charset: "utf8mb3", force: :cascade do |t|
    t.integer "tour_duration_days", default: 3, null: false
    t.datetime "tour_starts", default: "2022-02-28 00:00:00", null: false
    t.datetime "tour_finishes", default: "2022-03-03 00:00:00", null: false
    t.integer "tourist_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "tourbase_id", null: false
    t.index ["tourist_id"], name: "index_tours_on_tourist_id"
  end

  create_table "users", charset: "utf8mb3", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "firstname", null: false
    t.string "lastname", null: false
    t.boolean "is_admin", default: false, null: false
    t.string "token_id"
    t.integer "served_tourists", default: 0, null: false
    t.integer "edited_resources", default: 0, null: false
    t.integer "tourbase_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
