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

ActiveRecord::Schema[7.1].define(version: 2023_11_10_093342) do
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

end