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

ActiveRecord::Schema.define(version: 2019_01_20_154245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daily_statuses", force: :cascade do |t|
    t.string "in_time"
    t.string "out_time"
    t.string "break"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "status_date"
    t.index ["user_id"], name: "index_daily_statuses_on_user_id"
  end

  create_table "education_credentials", force: :cascade do |t|
    t.string "course"
    t.string "university"
    t.float "percentage"
    t.string "course_type"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_education_credentials_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "status"
    t.bigint "daily_status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["daily_status_id"], name: "index_tasks_on_daily_status_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "contact"
    t.string "profile_pic"
    t.string "designation"
    t.date "date_of_joining"
    t.date "date_of_birth"
    t.text "job_description"
    t.string "permanent_address"
    t.string "current_address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "nationality"
    t.string "gender"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "daily_statuses", "users"
  add_foreign_key "education_credentials", "users"
  add_foreign_key "tasks", "daily_statuses"
end
