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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130416153728) do

  create_table "houses", :force => true do |t|
    t.integer  "rent_cents",    :default => 0,     :null => false
    t.string   "rent_currency", :default => "USD", :null => false
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "members", :force => true do |t|
    t.integer  "pay_rate_cents",    :default => 0,     :null => false
    t.string   "pay_rate_currency", :default => "USD", :null => false
    t.decimal  "work_hours"
    t.decimal  "house_hours"
    t.integer  "house_id"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

end
