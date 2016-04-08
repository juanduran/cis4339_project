class CreateDatabase < ActiveRecord::Migration
  def change
    create_table "businesses", force: :cascade do |t|
      t.string   "business_name",  limit: 255
      t.string   "phone_number",   limit: 255
      t.string   "email",          limit: 255
      t.string   "street_address", limit: 255
      t.string   "city",           limit: 255
      t.string   "state",          limit: 255
      t.string   "zip",            limit: 255
      t.datetime "created_at",                 null: false
      t.datetime "updated_at",                 null: false
    end

    create_table "crews", force: :cascade do |t|
      t.string   "crew_name",   limit: 255
      t.integer  "employee_id", limit: 4
      t.datetime "created_at",              null: false
      t.datetime "updated_at",              null: false
    end

    create_table "customers", force: :cascade do |t|
      t.string   "customer_name",  limit: 255
      t.string   "phone_number",   limit: 255
      t.string   "email",          limit: 255
      t.string   "street_address", limit: 255
      t.string   "city",           limit: 255
      t.string   "state",          limit: 255
      t.string   "zip",            limit: 255
      t.datetime "created_at",                 null: false
      t.datetime "updated_at",                 null: false
      t.integer  "businesses_id",  limit: 4,   null: false
    end

    add_index "customers", ["businesses_id"], name: "fk_customers_businesses1_idx", using: :btree

    create_table "employees", force: :cascade do |t|
      t.string   "employee_name",  limit: 255
      t.string   "employee_email", limit: 255
      t.string   "role_id",        limit: 255
      t.datetime "created_at",                 null: false
      t.datetime "updated_at",                 null: false
      t.integer  "roles_id",       limit: 4,   null: false
      t.integer  "crews_id",       limit: 4,   null: false
    end

    add_index "employees", ["crews_id"], name: "fk_employees_crews1_idx", using: :btree
    add_index "employees", ["roles_id"], name: "fk_employees_roles1_idx", using: :btree

    create_table "equipment", force: :cascade do |t|
      t.string   "equipment_name",     limit: 255
      t.string   "equipment_location", limit: 255
      t.integer  "employee_id",        limit: 4
      t.datetime "created_at",                     null: false
      t.datetime "updated_at",                     null: false
      t.integer  "employees_id",       limit: 4,   null: false
    end

    add_index "equipment", ["employees_id"], name: "fk_equipment_employees1_idx", using: :btree

    create_table "estimates", id: false, force: :cascade do |t|
      t.integer  "id",                 limit: 4,                  null: false
      t.string   "potential_customer", limit: 255
      t.string   "terms",              limit: 255
      t.string   "description",        limit: 255
      t.integer  "quantity",           limit: 4
      t.decimal  "total",                          precision: 10
      t.datetime "created_at",                                    null: false
      t.datetime "updated_at",                                    null: false
      t.integer  "customers_id",       limit: 4,                  null: false
    end

    add_index "estimates", ["customers_id"], name: "fk_estimates_customers1_idx", using: :btree

    create_table "invoices", force: :cascade do |t|
      t.date     "date"
      t.decimal  "invoice_total",             precision: 10
      t.string   "terms",         limit: 255
      t.datetime "created_at",                               null: false
      t.datetime "updated_at",                               null: false
      t.integer  "customers_id",  limit: 4,                  null: false
      t.integer  "users_id",      limit: 4,                  null: false
    end

    add_index "invoices", ["customers_id"], name: "fk_invoices_customers1_idx", using: :btree
    add_index "invoices", ["users_id"], name: "fk_invoices_users1_idx", using: :btree

    create_table "jobs", force: :cascade do |t|
      t.integer  "crew_id",     limit: 4
      t.datetime "created_at",            null: false
      t.datetime "updated_at",            null: false
      t.integer  "crews_id",    limit: 4, null: false
      t.integer  "projects_id", limit: 4, null: false
    end

    add_index "jobs", ["crews_id"], name: "fk_jobs_crews1_idx", using: :btree
    add_index "jobs", ["projects_id"], name: "fk_jobs_projects1_idx", using: :btree

    create_table "line_items", id: false, force: :cascade do |t|
      t.integer  "id",          limit: 4, null: false
      t.integer  "quantity",    limit: 4
      t.integer  "service_id",  limit: 4
      t.integer  "job_id",      limit: 4
      t.datetime "created_at",            null: false
      t.datetime "updated_at",            null: false
      t.integer  "invoices_id", limit: 4, null: false
    end

    add_index "line_items", ["invoices_id"], name: "fk_line_items_invoices1_idx", using: :btree

    create_table "projects", force: :cascade do |t|
      t.string   "project_name", limit: 255
      t.string   "description",  limit: 255
      t.datetime "created_at",               null: false
      t.datetime "updated_at",               null: false
    end

    create_table "roles", force: :cascade do |t|
      t.string   "name",        limit: 255
      t.string   "description", limit: 255
      t.datetime "created_at",              null: false
      t.datetime "updated_at",              null: false
      t.integer  "users_id",    limit: 4,   null: false
    end

    add_index "roles", ["users_id"], name: "fk_roles_users1_idx", using: :btree

    create_table "services", force: :cascade do |t|
      t.string   "name",          limit: 255
      t.string   "description",   limit: 255
      t.float    "price",         limit: 24
      t.datetime "created_at",                null: false
      t.datetime "updated_at",                null: false
      t.integer  "line_items_id", limit: 4,   null: false
      t.integer  "jobs_id",       limit: 4,   null: false
      t.integer  "users_id",      limit: 4,   null: false
    end

    add_index "services", ["jobs_id"], name: "fk_services_jobs1_idx", using: :btree
    add_index "services", ["line_items_id"], name: "fk_services_line_items1_idx", using: :btree
    add_index "services", ["users_id"], name: "fk_services_users1_idx", using: :btree

    create_table "users", force: :cascade do |t|
      t.string   "name",                   limit: 255
      t.datetime "created_at",                                      null: false
      t.datetime "updated_at",                                      null: false
      t.string   "email",                  limit: 255, default: "", null: false
      t.string   "encrypted_password",     limit: 255, default: "", null: false
      t.string   "reset_password_token",   limit: 255
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.string   "current_sign_in_ip",     limit: 255
      t.string   "last_sign_in_ip",        limit: 255
    end

    add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
    add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

    create_table "vehicles", force: :cascade do |t|
      t.string   "vehicle_name",     limit: 255
      t.string   "vechile_location", limit: 255
      t.integer  "employee_id",      limit: 4
      t.datetime "created_at",                   null: false
      t.datetime "updated_at",                   null: false
      t.integer  "crews_id",         limit: 4,   null: false
    end

    add_index "vehicles", ["crews_id"], name: "fk_vehicles_crews1_idx", using: :btree

    add_foreign_key "customers", "businesses", column: "businesses_id", name: "fk_customers_businesses1"
    add_foreign_key "employees", "crews", column: "crews_id", name: "fk_employees_crews1"
    add_foreign_key "employees", "roles", column: "roles_id", name: "fk_employees_roles1"
    add_foreign_key "equipment", "employees", column: "employees_id", name: "fk_equipment_employees1"
    add_foreign_key "estimates", "customers", column: "customers_id", name: "fk_estimates_customers1"
    add_foreign_key "invoices", "customers", column: "customers_id", name: "fk_invoices_customers1"
    add_foreign_key "invoices", "users", column: "users_id", name: "fk_invoices_users1"
    add_foreign_key "jobs", "crews", column: "crews_id", name: "fk_jobs_crews1"
    add_foreign_key "jobs", "projects", column: "projects_id", name: "fk_jobs_projects1"
    add_foreign_key "line_items", "invoices", column: "invoices_id", name: "fk_line_items_invoices1"
    add_foreign_key "roles", "users", column: "users_id", name: "fk_roles_users1"
    add_foreign_key "services", "jobs", column: "jobs_id", name: "fk_services_jobs1"
    add_foreign_key "services", "line_items", column: "line_items_id", name: "fk_services_line_items1"
    add_foreign_key "services", "users", column: "users_id", name: "fk_services_users1"
    add_foreign_key "vehicles", "crews", column: "crews_id", name: "fk_vehicles_crews1"
  end
    end
