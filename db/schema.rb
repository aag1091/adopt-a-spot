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

ActiveRecord::Schema.define(version: 20151024152438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adoption_requests", force: true do |t|
    t.string   "group_name"
    t.integer  "no_of_volunteers"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "add1"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "email"
    t.string   "phone"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "spot_id"
  end

  add_index "adoption_requests", ["category_id"], name: "index_adoption_requests_on_category_id", using: :btree
  add_index "adoption_requests", ["spot_id"], name: "index_adoption_requests_on_spot_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "icon_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_spots", force: true do |t|
    t.integer  "group_id"
    t.integer  "spot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "source_id"
  end

  add_index "group_spots", ["group_id"], name: "index_group_spots_on_group_id", using: :btree
  add_index "group_spots", ["spot_id"], name: "index_group_spots_on_spot_id", using: :btree

  create_table "groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "source_id"
  end

  create_table "spots", force: true do |t|
    t.string   "name"
    t.string   "add1"
    t.string   "add2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.boolean  "status"
    t.string   "maintainer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "google_map_image_url"
    t.string   "google_street_view_image_url"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "distance"
    t.float    "bearing"
    t.integer  "category_id"
  end

  add_index "spots", ["category_id"], name: "index_spots_on_category_id", using: :btree

  create_table "user_groups", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "source_id"
  end

  add_index "user_groups", ["group_id"], name: "index_user_groups_on_group_id", using: :btree
  add_index "user_groups", ["user_id"], name: "index_user_groups_on_user_id", using: :btree

  create_table "users", force: true do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "source_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
