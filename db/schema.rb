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

ActiveRecord::Schema.define(version: 20131229034539) do

  create_table "desire_contacts", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mail_desireroom_id",            limit: 11, null: false
    t.integer  "master_contact_information_id", limit: 11, null: false
  end

  create_table "desire_madoris", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mail_desireroom_id", limit: 11, null: false
    t.integer  "master_madori_id",   limit: 11, null: false
  end

  create_table "mail_contacts", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "corp_name",  limit: 50,  null: false
    t.string   "name",       limit: 50,  null: false
    t.string   "email",      limit: 100, null: false
    t.text     "detail",                 null: false
  end

  create_table "mail_desirerooms", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                     limit: 255, default: "", null: false
    t.string   "furigana",                 limit: 255, default: ""
    t.integer  "age",                      limit: 11
    t.integer  "master_gender_id",         limit: 11
    t.integer  "master_job_id",            limit: 11,               null: false
    t.string   "tel",                      limit: 255, default: ""
    t.string   "email",                    limit: 255, default: "", null: false
    t.string   "station",                  limit: 255, default: ""
    t.integer  "master_commuting_time_id", limit: 11
    t.string   "line",                     limit: 255, default: ""
    t.string   "area",                     limit: 255, default: ""
    t.integer  "master_live_term_id",      limit: 11
    t.integer  "master_desired_number_id", limit: 11
    t.string   "conditions01",             limit: 255, default: ""
    t.string   "conditions02",             limit: 255, default: ""
    t.string   "conditions03",             limit: 255, default: ""
    t.string   "conditions04",             limit: 255, default: ""
    t.string   "conditions05",             limit: 255, default: ""
    t.text     "detail"
    t.integer  "master_hope_rent_id",      limit: 11
  end

  create_table "mail_mailmagazines", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",      limit: 80, default: "", null: false
  end

  create_table "mail_owners", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "corp_name",             limit: 40, default: "", null: false
    t.string   "name",                  limit: 50, default: "", null: false
    t.string   "furigana",              limit: 50, default: "", null: false
    t.string   "email",                 limit: 50, default: "", null: false
    t.text     "detail",                                        null: false
    t.string   "master_owner_kubun_id", limit: 11, default: "", null: false
  end

  create_table "mail_reviews", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title",                limit: 255
    t.string   "name",                 limit: 128
    t.integer  "master_age_gender_id", limit: 11
    t.integer  "master_job_id",        limit: 11
    t.string   "email",                limit: 255
    t.integer  "master_theme_id",      limit: 11
    t.text     "detail"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size",      limit: 8
    t.datetime "image_updated_at"
  end

  create_table "mail_vacanthouse_master_madoris", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mail_vacanthouse_id", limit: 11, null: false
    t.integer  "master_madori_id",    limit: 11, null: false
  end

  create_table "mail_vacanthouses", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                     limit: 128
    t.integer  "master_age_id",            limit: 11
    t.integer  "master_gender_id",         limit: 11
    t.integer  "master_job_id",            limit: 11
    t.string   "email",                    limit: 255
    t.string   "title",                    limit: 255
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size",          limit: 8
    t.datetime "image_updated_at"
    t.string   "address",                  limit: 255
    t.string   "price",                    limit: 255
    t.string   "etc_price",                limit: 255
    t.string   "station",                  limit: 255
    t.string   "station_time",             limit: 255
    t.integer  "master_tatemono_class_id", limit: 11
    t.boolean  "koshitsu"
    t.integer  "master_live_term_id",      limit: 11
    t.integer  "master_recruit_gender_id", limit: 11
    t.text     "detail"
  end

  create_table "master_age_genders", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value",      limit: 16, null: false
  end

  create_table "master_ages", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value",      limit: 16, null: false
  end

  create_table "master_commuting_times", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value",      limit: 16, default: "", null: false
  end

  create_table "master_contact_informations", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value",      limit: 16, default: "", null: false
  end

  create_table "master_desired_numbers", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value",      limit: 16, default: "", null: false
  end

  create_table "master_hope_rents", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value",      limit: 16, default: "", null: false
  end

  create_table "master_jobs", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value",      limit: 32, null: false
  end

  create_table "master_live_terms", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value",      limit: 16, null: false
  end

  create_table "master_madoris", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value",      limit: 16, null: false
  end

  create_table "master_owner_kubuns", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value",      limit: 16, default: "", null: false
  end

  create_table "master_recruit_genders", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value",      limit: 16, null: false
  end

  create_table "master_tatemono_classes", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value",      limit: 16, null: false
  end

  create_table "master_themes", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value",      limit: 32, null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at"

end
