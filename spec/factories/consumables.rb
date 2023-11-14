# == Schema Information
#
# Table name: consumables
#
#  id                 :integer          not null, primary key
#  calories           :integer
#  carbs_in_grams     :integer
#  name               :string
#  protein_in_grams   :integer
#  sodium_in_mg       :integer
#  total_fat_in_grams :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
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
