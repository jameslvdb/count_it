# == Schema Information
#
# Table name: meal_items
#
#  id            :integer          not null, primary key
#  quantity      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  consumable_id :integer          not null
#  meal_id       :integer          not null
#
# Indexes
#
#  index_meal_items_on_consumable_id  (consumable_id)
#  index_meal_items_on_meal_id        (meal_id)
#
# Foreign Keys
#
#  consumable_id  (consumable_id => consumables.id)
#  meal_id        (meal_id => meals.id)
#
require "rails_helper"

RSpec.describe MealItem, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
