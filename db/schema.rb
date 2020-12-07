# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_07_124735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "wish_items", force: :cascade do |t|
    t.string "name" 
    t.string "color"
    t.string "height"
    t.string "weight"
    t.string "link"
    t.text "description"
    t.integer "price"
    t.bigint "wish_list_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["wish_list_id"], name: "index_wish_items_on_wish_list_id"
  end

  create_table "wish_lists", force: :cascade do |t|
    t.string "title"
    t.integer "item_count"
    t.date "delivery_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "wish_items", "wish_lists"
end
