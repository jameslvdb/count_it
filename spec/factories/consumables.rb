FactoryBot.define do
  factory :consumable do
    name { "Banana" }

    factory :consumable_with_nutrients do
      calories { 100 }
      protein_in_grams { 1 }
      total_fat_in_grams { 1 }
      carbs_in_grams { 1 }
      sodium_in_mg { 1 }
    end
  end
end
