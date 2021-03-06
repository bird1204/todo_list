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

ActiveRecord::Schema.define(version: 20170321051051) do

  create_table "items", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "status"
    t.integer  "list_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["created_at"], name: "index_items_on_created_at"
    t.index ["list_id"], name: "index_items_on_list_id"
    t.index ["status"], name: "index_items_on_status"
    t.index ["title"], name: "index_items_on_title"
    t.index ["updated_at"], name: "index_items_on_updated_at"
  end

  create_table "lists", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "status"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["created_at"], name: "index_lists_on_created_at"
    t.index ["status"], name: "index_lists_on_status"
    t.index ["title"], name: "index_lists_on_title"
    t.index ["updated_at"], name: "index_lists_on_updated_at"
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "gender"
    t.index ["email"], name: "index_users_on_email"
  end

end
