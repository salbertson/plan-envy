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

ActiveRecord::Schema.define(:version => 20121010232606) do

  create_table "plans", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "preview_image_file_name"
    t.string   "preview_image_content_type"
    t.integer  "preview_image_file_size"
    t.datetime "preview_image_updated_at"
    t.string   "plan_file_file_name"
    t.string   "plan_file_content_type"
    t.integer  "plan_file_file_size"
    t.datetime "plan_file_updated_at"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.decimal  "price"
    t.integer  "publisher_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password", :limit => 128
    t.string   "salt",               :limit => 128
    t.string   "confirmation_token", :limit => 128
    t.string   "remember_token",     :limit => 128
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
