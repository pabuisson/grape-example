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

ActiveRecord::Schema.define(version: 20161021094220) do

  create_table "albums", force: :cascade do |t|
    t.string   "name"
    t.string   "year"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "is_archived", default: false
  end

  add_index "albums", ["id"], name: "sqlite_autoindex_albums_1", unique: true

  create_table "albums_singers", id: false, force: :cascade do |t|
    t.binary "singer_id", null: false
    t.binary "album_id",  null: false
  end

  create_table "albums_songs", id: false, force: :cascade do |t|
    t.binary "album_id", null: false
    t.binary "song_id",  null: false
  end

  create_table "auth_keys", id: false, force: :cascade do |t|
    t.string   "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nicknames", force: :cascade do |t|
    t.string   "nickname"
    t.binary   "singer_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "is_archived", default: false
  end

  add_index "nicknames", ["id"], name: "sqlite_autoindex_nicknames_1", unique: true

  create_table "singers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "is_archived", default: false
  end

  add_index "singers", ["id"], name: "sqlite_autoindex_singers_1", unique: true

  create_table "singers_songs", id: false, force: :cascade do |t|
    t.binary "singer_id", null: false
    t.binary "song_id",   null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "is_archived", default: false
  end

  add_index "songs", ["id"], name: "sqlite_autoindex_songs_1", unique: true

end
