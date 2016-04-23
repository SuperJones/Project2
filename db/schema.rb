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

ActiveRecord::Schema.define(version: 20160422164454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventories", force: :cascade do |t|
    t.integer "user_id"
    t.integer "weapon_id"
  end

  add_index "inventories", ["user_id"], name: "index_inventories_on_user_id", using: :btree
  add_index "inventories", ["weapon_id"], name: "index_inventories_on_weapon_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string  "username"
    t.integer "steps"
    t.string  "photo_url"
    t.string  "email"
    t.string  "password"
  end

  create_table "weapons", force: :cascade do |t|
    t.string  "weapon_name"
    t.string  "weapon_type"
    t.string  "photo_url"
    t.integer "attack_points"
  end

end
