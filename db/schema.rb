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

ActiveRecord::Schema.define(version: 2021_12_01_195350) do

  create_table "schools", force: :cascade do |t|
    t.string "name", null: false
    t.string "location", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_schools_on_name", unique: true
  end

  create_table "sword_types", force: :cascade do |t|
    t.string "type", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["type"], name: "index_sword_types_on_type", unique: true
  end

  create_table "swords", force: :cascade do |t|
    t.string "name", null: false
    t.integer "min_damage"
    t.integer "max_damage"
    t.integer "sword_type_id"
    t.integer "witcher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sword_type_id"], name: "index_swords_on_sword_type_id"
    t.index ["witcher_id"], name: "index_swords_on_witcher_id"
  end

  create_table "witchers", force: :cascade do |t|
    t.string "name", null: false
    t.string "nickname"
    t.integer "school_id"
    t.string "location", default: "At his school", null: false
    t.integer "age", default: 12, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "nickname"], name: "index_witchers_on_name_and_nickname", unique: true
    t.index ["school_id"], name: "index_witchers_on_school_id"
  end

end
