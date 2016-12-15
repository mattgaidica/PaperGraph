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

ActiveRecord::Schema.define(version: 20161215213330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.integer  "people_id"
    t.integer  "manuscripts_id"
    t.integer  "order",          default: 1
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["manuscripts_id"], name: "index_authors_on_manuscripts_id", using: :btree
    t.index ["people_id"], name: "index_authors_on_people_id", using: :btree
  end

  create_table "keywords", force: :cascade do |t|
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keywords_sentences", force: :cascade do |t|
    t.integer  "sentences_id"
    t.integer  "keywords_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["keywords_id"], name: "index_keywords_sentences_on_keywords_id", using: :btree
    t.index ["sentences_id"], name: "index_keywords_sentences_on_sentences_id", using: :btree
  end

  create_table "manuscripts", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sentences", force: :cascade do |t|
    t.integer  "manuscripts_id"
    t.string   "content"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["manuscripts_id"], name: "index_sentences_on_manuscripts_id", using: :btree
  end

  add_foreign_key "authors", "manuscripts", column: "manuscripts_id"
  add_foreign_key "authors", "people", column: "people_id"
  add_foreign_key "keywords_sentences", "keywords", column: "keywords_id"
  add_foreign_key "keywords_sentences", "sentences", column: "sentences_id"
  add_foreign_key "sentences", "manuscripts", column: "manuscripts_id"
end
