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

ActiveRecord::Schema.define(:version => 20111106043643) do

  create_table "car", :id => false, :force => true do |t|
    t.string "vin",         :limit => 50, :null => false
    t.string "make",        :limit => 50
    t.string "model",       :limit => 50
    t.string "color",       :limit => 50
    t.string "seller",      :limit => 50
    t.string "purchase_by", :limit => 50
  end

  create_table "course", :id => false, :force => true do |t|
    t.string "cno",   :limit => 3
    t.string "cname", :limit => 5
  end

  create_table "customer", :id => false, :force => true do |t|
    t.string "license", :limit => 50, :null => false
    t.string "cname",   :limit => 50
    t.string "addr",    :limit => 50
    t.string "phone",   :limit => 50
  end

  create_table "enrolled", :id => false, :force => true do |t|
    t.string "sno",   :limit => 3
    t.string "cno",   :limit => 3
    t.string "grade", :limit => 1
  end

  create_table "sales_rep", :id => false, :force => true do |t|
    t.string "name",  :limit => 50, :null => false
    t.string "dept",  :limit => 50
    t.string "phone", :limit => 50
  end

  create_table "student", :id => false, :force => true do |t|
    t.string "sno",   :limit => 3
    t.string "sname", :limit => 5
    t.string "addr",  :limit => 2
  end

  create_table "testdrives", :id => false, :force => true do |t|
    t.string "vin",     :limit => 50, :null => false
    t.string "license", :limit => 50, :null => false
    t.string "date",    :limit => 50
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
