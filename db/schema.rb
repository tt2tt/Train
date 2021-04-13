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

ActiveRecord::Schema.define(version: 2021_04_13_025526) do

  create_table "contractor_attendances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "year", null: false
    t.integer "month", null: false
    t.integer "total_time", null: false
    t.integer "basic_time", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contractor_attendances_on_user_id"
  end

  create_table "deductions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "year", null: false
    t.integer "month", null: false
    t.integer "health_insurance", null: false
    t.integer "care_insurance", null: false
    t.integer "pension", null: false
    t.integer "employment_insurance", null: false
    t.integer "income_tax", null: false
    t.integer "residents_tax", null: false
    t.integer "other", null: false
    t.integer "total_fee", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_deductions_on_user_id"
  end

  create_table "matters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "contractor", null: false
    t.string "name", null: false
    t.integer "price", null: false
    t.integer "width_up", null: false
    t.integer "width_under", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_matters_on_user_id"
  end

  create_table "organizations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "afiliation", null: false
    t.integer "basic_salary", null: false
    t.integer "allowances", null: false
    t.integer "insurance_number", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_organizations_on_user_id"
  end

  create_table "pays", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "year", null: false
    t.integer "month", null: false
    t.integer "basic", null: false
    t.integer "exception_allowance", null: false
    t.integer "position_allowance", null: false
    t.integer "overtime_allowance", null: false
    t.integer "expenses", null: false
    t.integer "total_fee", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pays_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.bigint "phone_number"
    t.string "address"
    t.bigint "emergency_contact"
    t.string "relationship"
    t.bigint "mynumber"
    t.string "account"
    t.bigint "pension_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "contractor_attendances", "users"
  add_foreign_key "deductions", "users"
  add_foreign_key "matters", "users"
  add_foreign_key "organizations", "users"
  add_foreign_key "pays", "users"
end
