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

ActiveRecord::Schema.define(version: 20160408030736) do

  create_table "businesses", force: :cascade do |t|
    t.string   "business_name"
    t.string   "phone_number"
    t.string   "email"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "crews", force: :cascade do |t|
    t.string   "crew_name"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "phone_number"
    t.string   "email"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "business_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "employee_name"
    t.string   "employee_email"
    t.string   "role_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string   "equipment_name"
    t.string   "equipment_location"
    t.integer  "employee_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "estimates", force: :cascade do |t|
    t.string   "potential_customer"
    t.string   "terms"
    t.string   "description"
    t.integer  "quantity"
    t.decimal  "total"
    t.integer  "customer_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer  "customer_id"
    t.date     "date"
    t.decimal  "invoice_total"
    t.string   "terms"
    t.integer  "project_id"
    t.integer  "job_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "crew_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "quantity"
    t.integer  "service_id"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "project_name"
    t.string   "description"
    t.integer  "job_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.float    "price"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "services", ["user_id"], name: "index_services_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "role_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["role_id"], name: "index_users_on_role_id"

  create_table "vehicles", force: :cascade do |t|
    t.string   "vehicle_name"
    t.string   "vechile_location"
    t.integer  "employee_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
