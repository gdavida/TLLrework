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

ActiveRecord::Schema.define(version: 4) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "age_groups", force: :cascade do |t|
    t.string "age"
    t.string "color"
  end

  create_table "boxes", force: :cascade do |t|
    t.string  "name"
    t.string  "status"
    t.integer "age_group_id"
    t.integer "location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "branch_name"
    t.string "contact_name"
  end

  create_table "toys", force: :cascade do |t|
    t.string  "name"
    t.string  "upc"
    t.string  "pic_url"
    t.integer "pieces"
    t.integer "box_id"
    t.integer "age_group_id"
  end

end
