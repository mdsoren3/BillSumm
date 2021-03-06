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

ActiveRecord::Schema.define(version: 20140218215024) do

  create_table "ar_transactions", force: true do |t|
    t.string   "date"
    t.decimal  "transactionAmount"
    t.string   "transactionType"
    t.string   "note"
    t.integer  "billing_entry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "applied"
  end

  create_table "billing_entries", force: true do |t|
    t.decimal  "timeBilled"
    t.decimal  "expensesBilled"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "lastnameorbizname"
    t.string   "firstname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trust_transactions", force: true do |t|
    t.string   "date"
    t.decimal  "transactionAmount"
    t.string   "transactionType"
    t.string   "note"
    t.integer  "billing_entry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "applied"
  end

end
