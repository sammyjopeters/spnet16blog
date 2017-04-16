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

ActiveRecord::Schema.define(version: 20170103025005) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gardens", force: :cascade do |t|
    t.string   "name"
    t.string   "garden_type"
    t.string   "structure"
    t.date     "started"
    t.string   "sun"
    t.string   "soil"
    t.string   "drainage"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "gardens", ["location_id"], name: "index_gardens_on_location_id", using: :btree

  create_table "journal_entries", force: :cascade do |t|
    t.string   "byline"
    t.text     "notes"
    t.float    "temperature"
    t.float    "rainfall_24hr"
    t.integer  "garden_id"
    t.string   "impression"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "journal_entries", ["garden_id"], name: "index_journal_entries_on_garden_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.float    "location_lat"
    t.float    "location_long"
    t.string   "heat_zone"
    t.string   "cool_zone"
    t.float    "average_temp"
    t.float    "ann_rainfall"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_foreign_key "gardens", "locations"
  add_foreign_key "journal_entries", "gardens"
end
