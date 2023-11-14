require "rails_helper"

RSpec.describe "consumables/index", type: :view do
  before(:each) do
    assign(:consumables, [
      build_stubbed(
        :consumable,
        name: "Name",
        calories: 2,
        carbs_in_grams: 3,
        protein_in_grams: 4,
        total_fat_in_grams: 5,
        sodium_in_mg: 6
      ),
      build_stubbed(
        :consumable,
        name: "Name",
        calories: 2,
        carbs_in_grams: 3,
        protein_in_grams: 4,
        total_fat_in_grams: 5,
        sodium_in_mg: 6
      )
    ])
  end

  it "renders a list of consumables" do
    render
    cell_selector = (Rails::VERSION::STRING >= "7") ? "div>p" : "tr>td"
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
  end
end
