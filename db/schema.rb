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

ActiveRecord::Schema.define(:version => 20120613061331) do

  create_table "addresses", :force => true do |t|
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "addressable_id"
    t.string   "addressable_type"
  end

  create_table "attendances", :force => true do |t|
    t.datetime "check_in"
    t.datetime "check_out"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "employee_id"
  end

  create_table "catalogs", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "dish_id"
  end

  create_table "chefs", :force => true do |t|
    t.string   "specialty"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "order_item_id"
  end

  create_table "customers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "email"
    t.integer  "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dishes", :force => true do |t|
    t.string   "name"
    t.string   "introduction"
    t.decimal  "price",         :precision => 10, :scale => 0
    t.boolean  "availability"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.integer  "order_item_id"
    t.integer  "catalog_id"
  end

  create_table "employees", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "ssn"
    t.integer  "phone"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "employable_id"
    t.string   "employable_type"
    t.integer  "address_id"
    t.integer  "payroll_log_id"
  end

  create_table "managers", :force => true do |t|
    t.string   "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "order_item_statuses", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "order_items", :force => true do |t|
    t.string   "comment"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "order_id"
    t.integer  "order_item_status_id"
    t.integer  "dish_id"
    t.integer  "chef_id"
  end

  create_table "order_statuses", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "orders", :force => true do |t|
    t.date     "date_create"
    t.date     "date_submit"
    t.integer  "number_customer"
    t.decimal  "pre_tax_amount",  :precision => 10, :scale => 0
    t.decimal  "tax",             :precision => 10, :scale => 0
    t.decimal  "discount",        :precision => 10, :scale => 0
    t.decimal  "tips",            :precision => 10, :scale => 0
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.integer  "customer_id"
    t.integer  "waiter_id"
    t.integer  "table_id"
    t.integer  "order_status_id"
  end

  create_table "payroll_logs", :force => true do |t|
    t.date     "date"
    t.decimal  "amount",      :precision => 10, :scale => 0
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "employee_id"
  end

  create_table "salary_rates", :force => true do |t|
    t.string   "level"
    t.string   "description"
    t.decimal  "hourly_rate", :precision => 10, :scale => 0
    t.decimal  "bonus",       :precision => 10, :scale => 0
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "employee_id"
  end

  create_table "tables", :force => true do |t|
    t.integer  "min_capacity"
    t.integer  "max_capacity"
    t.string   "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "waiters", :force => true do |t|
    t.string   "languages"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "order_id"
  end

end
