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

ActiveRecord::Schema.define(version: 20160323210538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "category",   null: false
    t.string   "effect",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon", force: :cascade do |t|
    t.integer  "national_poke_num", null: false
    t.string   "name",              null: false
    t.string   "type_one"
    t.string   "type_two"
    t.integer  "generation"
    t.integer  "total_points"
    t.integer  "base_hp"
    t.integer  "base_attack"
    t.integer  "base_defense"
    t.integer  "base_sp_attack"
    t.integer  "base_sp_defense"
    t.integer  "base_speed"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "sightings", force: :cascade do |t|
    t.date     "date",       null: false
    t.time     "time",       null: false
    t.string   "location",   null: false
    t.string   "observer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "pokemon_id", null: false
  end

  add_index "sightings", ["pokemon_id"], name: "index_sightings_on_pokemon_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "sightings", "pokemon"
end
