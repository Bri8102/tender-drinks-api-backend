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

ActiveRecord::Schema.define(version: 2020_12_20_004955) do

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.string "flavor"
    t.string "ingredient"
    t.string "prep"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "liquor_drinks", force: :cascade do |t|
    t.integer "liquor_id", null: false
    t.integer "cocktail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cocktail_id"], name: "index_liquor_drinks_on_cocktail_id"
    t.index ["liquor_id"], name: "index_liquor_drinks_on_liquor_id"
  end

  create_table "liquors", force: :cascade do |t|
    t.string "name"
    t.string "alcohol"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "liquor_drinks", "cocktails"
  add_foreign_key "liquor_drinks", "liquors"
end
