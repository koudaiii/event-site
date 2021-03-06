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

ActiveRecord::Schema.define(version: 20151204002502) do

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.string   "penname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_authors", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "book_authors", ["author_id"], name: "index_book_authors_on_author_id"
  add_index "book_authors", ["book_id"], name: "index_book_authors_on_book_id"

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.date     "published_on"
    t.integer  "price"
    t.integer  "number_of_page"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "publisher_id"
    t.integer  "status"
  end

  add_index "books", ["publisher_id"], name: "index_books_on_publisher_id"

  create_table "events", force: :cascade do |t|
    t.integer  "owner_id",                 null: false
    t.string   "name",        limit: 50,   null: false
    t.string   "place",       limit: 100,  null: false
    t.datetime "start_time",               null: false
    t.datetime "end_time",                 null: false
    t.string   "content",     limit: 2000, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "event_image"
  end

  add_index "events", ["owner_id"], name: "index_events_on_owner_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id",   null: false
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tickets", ["event_id", "user_id"], name: "index_tickets_on_event_id_and_user_id", unique: true
  add_index "tickets", ["event_id"], name: "index_tickets_on_event_id"
  add_index "tickets", ["user_id", "event_id"], name: "index_tickets_on_user_id_and_event_id", unique: true
  add_index "tickets", ["user_id"], name: "index_tickets_on_user_id"

  create_table "user_decorators", force: :cascade do |t|
    t.string   "first_name"
    t.string   "family_name"
    t.string   "email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.boolean  "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "nickname"
    t.string   "image_url"
  end

  add_index "users", ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true

end
