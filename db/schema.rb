# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_211_206_110_908) do
  create_table 'schools', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'location', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['name'], name: 'index_schools_on_name', unique: true
  end

  create_table 'sword_types', force: :cascade do |t|
    t.string 'material', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['material'], name: 'index_sword_types_on_material', unique: true
  end

  create_table 'swords', force: :cascade do |t|
    t.string 'name', null: false
    t.integer 'min_damage', null: false
    t.integer 'max_damage', null: false
    t.integer 'sword_type_id'
    t.integer 'witcher_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['sword_type_id'], name: 'index_swords_on_sword_type_id'
    t.index ['witcher_id'], name: 'index_swords_on_witcher_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'name', null: false
    t.string 'nickname'
    t.boolean 'is_elder', default: false, null: false
    t.integer 'viewed_pages', default: 0, null: false
    t.integer 'edited_resources', default: 0, null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  create_table 'witchers', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'nickname'
    t.integer 'school_id'
    t.string 'location', default: 'At his school', null: false
    t.integer 'age', default: 12, null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[name nickname], name: 'index_witchers_on_name_and_nickname', unique: true
    t.index ['school_id'], name: 'index_witchers_on_school_id'
  end
end
