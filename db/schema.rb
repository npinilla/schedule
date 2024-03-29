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

ActiveRecord::Schema.define(version: 20190315192539) do

  create_table "drivers", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.integer  "vehicle_id"
    t.string   "cities"
    t.integer  "max_stops"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routes", force: true do |t|
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.string   "load_type"
    t.integer  "load_sum"
    t.string   "cities"
    t.integer  "stops_amount"
    t.integer  "vehicle_id"
    t.integer  "driver_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "used_time_slots", force: true do |t|
    t.integer  "driver_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", force: true do |t|
    t.integer  "capacity"
    t.string   "load_type"
    t.integer  "driver_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
