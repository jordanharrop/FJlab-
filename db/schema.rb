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

ActiveRecord::Schema.define(version: 20160128210248) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "rank"
    t.string   "logo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "market_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "locations", ["market_id"], name: "index_locations_on_market_id"
  add_index "locations", ["product_id"], name: "index_locations_on_product_id"

  create_table "markets", force: :cascade do |t|
    t.string   "name"
    t.integer  "rank"
    t.string   "flag_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mobilities", force: :cascade do |t|
    t.string   "name"
    t.integer  "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "style_number"
    t.string   "fd_number"
    t.string   "confirmation_number"
    t.integer  "category_id"
    t.integer  "mobility_id"
    t.integer  "mobility_rank"
    t.string   "gender"
    t.string   "warranty"
    t.string   "warranty_url"
    t.string   "image_url"
    t.string   "description"
    t.text     "comments"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id"
  add_index "products", ["mobility_id"], name: "index_products_on_mobility_id"

end