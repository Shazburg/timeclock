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

ActiveRecord::Schema.define(:version => 20100907190104) do

  create_table "employees", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "punches", :force => true do |t|
    t.integer  "employee_id"
    t.boolean  "shift_in"
    t.boolean  "break_in"
    t.boolean  "break_out"
    t.boolean  "shift_out"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
