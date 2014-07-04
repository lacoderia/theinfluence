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

ActiveRecord::Schema.define(version: 20140702223448) do

  create_table "addons", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.integer  "addon_order"
  end

  create_table "addons_combos", force: true do |t|
    t.integer  "addon_id"
    t.integer  "combo_id"
    t.integer  "quantity"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active"
    t.boolean  "purchasable", default: false
    t.string   "description"
  end

  create_table "assets", force: true do |t|
    t.integer  "product_id"
    t.string   "url"
    t.string   "url_thumb"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.string   "asset_type"
  end

  create_table "categories", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "combos", force: true do |t|
    t.integer  "product_id"
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "business"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", force: true do |t|
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts_users", id: false, force: true do |t|
    t.integer "contract_id"
    t.integer "user_id"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.text     "benefits"
    t.boolean  "active"
    t.string   "short_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "footnote"
    t.string   "signin_link"
  end

  create_table "purchases_addons", force: true do |t|
    t.integer  "addon_id"
    t.integer  "user_id"
    t.integer  "quantity"
    t.float    "total_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases_combos", force: true do |t|
    t.integer  "user_id"
    t.integer  "combo_id"
    t.float    "total_price"
    t.boolean  "upgrade"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_name"
    t.string   "password"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", id: false, force: true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.float    "next_payment"
    t.boolean  "active",                 default: true
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
