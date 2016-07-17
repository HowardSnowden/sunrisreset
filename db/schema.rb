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

ActiveRecord::Schema.define(version: 20160711013607) do

  create_table "abouts", force: true do |t|
    t.text "who"
    t.text "what"
    t.text "when"
    t.text "where"
    t.text "why"
    t.text "how"
  end

  create_table "admins", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "albums", force: true do |t|
    t.string   "title"
    t.date     "release_date"
    t.string   "artwork"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "backgrounds", force: true do |t|
    t.integer  "site_setting_id", null: false
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "band_photos", force: true do |t|
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_props", force: true do |t|
    t.string "name"
    t.string "from"
    t.string "subject"
    t.text   "body"
  end

  create_table "facts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", force: true do |t|
    t.string   "title"
    t.string   "link"
    t.integer  "ep_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_setting_id"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shows", force: true do |t|
    t.date     "show_date"
    t.string   "venue"
    t.string   "address"
    t.string   "cover"
    t.time     "start_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "bands"
  end

  create_table "site_settings", force: true do |t|
    t.integer  "singleton_guard"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "band_photo"
    t.string   "main_background"
    t.string   "feature_text"
    t.string   "main_color"
    t.string   "header_text_color"
    t.string   "body_text_color"
    t.integer  "featured_video"
    t.string   "link_color"
    t.string   "background_color"
  end

  add_index "site_settings", ["singleton_guard"], name: "index_site_settings_on_singleton_guard", unique: true

  create_table "songs", force: true do |t|
    t.string   "title"
    t.string   "song_link"
    t.text     "lyrics"
    t.integer  "song_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "song_image"
    t.integer  "album_id"
  end

  create_table "videos", force: true do |t|
    t.string   "title"
    t.string   "embed_link"
    t.string   "uploader"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "vid_id"
  end

end
