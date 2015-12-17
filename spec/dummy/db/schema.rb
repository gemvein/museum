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

ActiveRecord::Schema.define(version: 20140519231105) do

  create_table "museum_case_details", force: :cascade do |t|
    t.integer  "museum_case_id"
    t.integer  "museum_loupe_id"
    t.string   "key"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "museum_case_details", ["museum_loupe_id", "museum_case_id", "key"], name: "key", unique: true

  create_table "museum_cases", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.text     "sort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "museum_cases", ["name"], name: "index_museum_cases_on_name", unique: true

  create_table "museum_loupes", force: :cascade do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "uri_template"
    t.string   "data_format"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "museum_loupes", ["slug"], name: "index_museum_loupes_on_slug", unique: true

end
