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

ActiveRecord::Schema.define(:version => 20100916043204) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "enable"
  end

  create_table "employees", :force => true do |t|
    t.string "last_name"
    t.string "first_name"
  end

  create_table "punches", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "category_id"
    t.boolean  "in"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
