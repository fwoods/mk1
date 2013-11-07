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

ActiveRecord::Schema.define(:version => 20131107135000) do

  create_table "photos", :force => true do |t|
    t.integer  "product_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "photofile_file_name"
    t.string   "photofile_content_type"
    t.integer  "photofile_file_size"
    t.datetime "photofile_updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "subtitle"
    t.string   "status"
    t.decimal  "price",       :precision => 8, :scale => 2
    t.string   "buy_link"
    t.string   "images"
    t.integer  "like_num"
    t.integer  "own_num"
    t.string   "author"
    t.text     "description"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "review_photos", :force => true do |t|
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "product_id"
    t.string   "photofile_file_name"
    t.string   "photofile_content_type"
    t.integer  "photofile_file_size"
    t.datetime "photofile_updated_at"
  end

end
