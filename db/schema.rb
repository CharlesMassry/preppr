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

ActiveRecord::Schema.define(version: 20140801221130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_collection_memberships", force: true do |t|
    t.integer  "user_id"
    t.integer  "card_collection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "card_collection_memberships", ["card_collection_id"], name: "index_card_collection_memberships_on_card_collection_id", using: :btree
  add_index "card_collection_memberships", ["user_id"], name: "index_card_collection_memberships_on_user_id", using: :btree

  create_table "card_collections", force: true do |t|
    t.integer  "admin_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  add_index "card_collections", ["admin_id"], name: "index_card_collections_on_admin_id", using: :btree

  create_table "cards", force: true do |t|
    t.integer  "card_collection_id"
    t.string   "front"
    t.string   "back"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cards", ["card_collection_id"], name: "index_cards_on_card_collection_id", using: :btree

  create_table "quizzes", force: true do |t|
    t.integer  "user_id"
    t.integer  "card_collection_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quizzes", ["card_collection_id"], name: "index_quizzes_on_card_collection_id", using: :btree
  add_index "quizzes", ["user_id"], name: "index_quizzes_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
