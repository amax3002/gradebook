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

ActiveRecord::Schema.define(version: 20161130203756) do

  create_table "grades", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "letter_grade"
    t.date     "date_of_grade"
    t.string   "grade_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "teacher_id"
    t.string   "title"
    t.text     "comment"
  end

  create_table "parents", force: :cascade do |t|
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "students", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "full_name"
    t.string   "password"
    t.string   "password_hash"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
