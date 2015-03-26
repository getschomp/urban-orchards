# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150326045725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fruits", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "svg_logo"
    t.string   "plant_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "street_adress"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "coordinates",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orchards", force: :cascade do |t|
    t.string  "site"
    t.string  "name",        null: false
    t.integer "location_id", null: false
  end

  add_index "orchards", ["location_id"], name: "index_orchards_on_location_id", using: :btree

  create_table "orchards_fruits", force: :cascade do |t|
    t.integer "orchard_id", null: false
    t.integer "fruit_id",   null: false
  end

  add_index "orchards_fruits", ["fruit_id"], name: "index_orchards_fruits_on_fruit_id", using: :btree
  add_index "orchards_fruits", ["orchard_id"], name: "index_orchards_fruits_on_orchard_id", using: :btree

  create_table "photographs", force: :cascade do |t|
    t.string   "image_url",  null: false
    t.string   "caption"
    t.integer  "user_id",    null: false
    t.integer  "review_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photographs", ["review_id"], name: "index_photographs_on_review_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.text     "status"
    t.text     "review_text"
    t.integer  "stars",       null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
