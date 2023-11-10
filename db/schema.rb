# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_11_10_094558) do
  create_table "consumables", force: :cascade do |t|
    t.string "name"
    t.integer "calories"
    t.integer "carbs_in_grams"
    t.integer "protein_in_grams"
    t.integer "total_fat_in_grams"
    t.integer "sodium_in_mg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "daily_logs", force: :cascade do |t|
    t.float "weight"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meal_items", force: :cascade do |t|
    t.integer "meal_id", null: false
    t.integer "consumable_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consumable_id"], name: "index_meal_items_on_consumable_id"
    t.index ["meal_id"], name: "index_meal_items_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.integer "daily_log_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["daily_log_id"], name: "index_meals_on_daily_log_id"
  end

  add_foreign_key "meal_items", "consumables"
  add_foreign_key "meal_items", "meals"
  add_foreign_key "meals", "daily_logs"
end
