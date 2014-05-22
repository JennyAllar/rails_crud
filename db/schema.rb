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

ActiveRecord::Schema.define(version: 20140522023654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cats", force: true do |t|
    t.string  "cat_name"
    t.string  "cat_color"
    t.integer "kittens"
  end

  create_table "cities", force: true do |t|
    t.string "city_name"
    t.string "state"
    t.string "time_zone"
  end

  create_table "dogs", force: true do |t|
    t.string  "dog_name"
    t.string  "dog_breed"
    t.boolean "spay_neuter"
  end

end