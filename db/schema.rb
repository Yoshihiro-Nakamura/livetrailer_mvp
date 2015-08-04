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

ActiveRecord::Schema.define(version: 20150730071333) do

  create_table "artists", force: :cascade do |t|
    t.string   "artist_name",   limit: 255
    t.integer  "instrument_id", limit: 4
    t.string   "image_url",     limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "composers", force: :cascade do |t|
    t.string   "comp_name",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "concerts", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.integer  "conductor_id", limit: 4
    t.integer  "orchestra_id", limit: 4
    t.integer  "place_id",     limit: 4
    t.datetime "start_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "concerts_songs", force: :cascade do |t|
    t.integer  "concert_id", limit: 4
    t.integer  "song_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "conductors", force: :cascade do |t|
    t.string   "cond_name",  limit: 255
    t.string   "image_url",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orchestras", force: :cascade do |t|
    t.string   "orch_name",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", force: :cascade do |t|
    t.string   "place_name", limit: 255
    t.string   "adress",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songs", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.integer  "composer_id", limit: 4
    t.string   "youtube_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
