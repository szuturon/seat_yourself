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


ActiveRecord::Schema.define(version: 20130922053241) do


  create_table "diners", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.integer  "diner_id"
    t.integer  "restaurant_id"
    t.datetime "reservation_time"
    t.datetime "end_time"
    t.integer  "party_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurant_owners", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "cuisine"
    t.string   "phonenumber"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "restaurant_owner_id"
    #need to add seat

  end

end
