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
require "rails_helper"

RSpec.describe Consumable, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
