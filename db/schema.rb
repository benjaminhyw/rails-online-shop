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

ActiveRecord::Schema.define(version: 20170213233342) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "item_id",    default: "--- []\n"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.integer  "quantity"
    t.float    "price"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.text     "category_id", default: "--- []\n"
  end

  create_table "items_categories", force: :cascade do |t|
    t.integer "category_id"
    t.integer "item_id"
    t.index ["category_id"], name: "index_items_categories_on_category_id"
    t.index ["item_id"], name: "index_items_categories_on_item_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "items",      default: "--- []\n"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "item_id",    default: "--- []\n"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.boolean  "admin"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.text     "orders",          default: "--- []\n"
    t.text     "shopping_cart",   default: "--- []\n"
  end

  create_table "users_orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "order_id"
    t.index ["order_id"], name: "index_users_orders_on_order_id"
    t.index ["user_id"], name: "index_users_orders_on_user_id"
  end

  create_table "users_shopping_cart", force: :cascade do |t|
    t.integer "user_id"
    t.integer "shopping_cart_id"
    t.index ["shopping_cart_id"], name: "index_users_shopping_cart_on_shopping_cart_id"
    t.index ["user_id"], name: "index_users_shopping_cart_on_user_id"
  end

end
