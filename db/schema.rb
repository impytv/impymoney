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

ActiveRecord::Schema.define(version: 20140928151631) do

  create_table "commits", force: true do |t|
    t.integer  "user_id"
    t.date     "date"
    t.decimal  "amount",     precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "iterations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "recurrence_code"
    t.integer  "iteration"
    t.integer  "stride"
    t.string   "interval_type"
  end

  create_table "recurrence_types", force: true do |t|
    t.string   "recurrence_code"
    t.string   "description"
    t.string   "interval_type"
    t.integer  "interval_length"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recurring_transactions", force: true do |t|
    t.integer  "user_id"
    t.string   "description"
    t.date     "date_from"
    t.date     "date_to"
    t.decimal  "amount",          precision: 10, scale: 0
    t.string   "recurrence_code"
    t.integer  "last_iteration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", force: true do |t|
    t.integer  "user_id"
    t.date     "date"
    t.string   "description"
    t.decimal  "delta",             precision: 10, scale: 0
    t.decimal  "amount",            precision: 10, scale: 0
    t.integer  "recurrence_id"
    t.integer  "iteration"
    t.boolean  "committed"
    t.boolean  "overridden_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "actual"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
    t.string   "uid"
    t.string   "refresh_token"
    t.string   "access_token"
    t.string   "expires"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
