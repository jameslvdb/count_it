json.extract! consumable, :id, :name, :calories, :carbs_in_grams, :protein_in_grams, :total_fat_in_grams, :sodium_in_mg, :created_at, :updated_at
json.url consumable_url(consumable, format: :json)
