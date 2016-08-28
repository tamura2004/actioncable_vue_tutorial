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

ActiveRecord::Schema.define(version: 20160824114908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "name"
    t.string   "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs_initial_abilities", force: :cascade do |t|
    t.integer  "job_id"
    t.integer  "ability_id"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ability_id"], name: "index_jobs_initial_abilities_on_ability_id", using: :btree
    t.index ["job_id"], name: "index_jobs_initial_abilities_on_job_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "area"
    t.string   "place"
    t.string   "name"
    t.string   "info"
    t.string   "page_1"
    t.string   "page_2"
    t.string   "page_3"
    t.string   "page_4"
    t.string   "page_5"
    t.string   "page_6"
    t.string   "page_7"
    t.string   "page_8"
    t.string   "msg_1"
    t.string   "msg_2"
    t.string   "msg_3"
    t.string   "msg_4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.string   "name"
    t.string   "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races_initial_abilities", force: :cascade do |t|
    t.integer  "race_id"
    t.integer  "ability_id"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ability_id"], name: "index_races_initial_abilities_on_ability_id", using: :btree
    t.index ["race_id"], name: "index_races_initial_abilities_on_race_id", using: :btree
  end

  add_foreign_key "jobs_initial_abilities", "abilities"
  add_foreign_key "jobs_initial_abilities", "jobs"
  add_foreign_key "races_initial_abilities", "abilities"
  add_foreign_key "races_initial_abilities", "races"
end
