require "rails_helper"

RSpec.describe "consumables/edit", type: :view do
  let(:consumable) {
    build_stubbed(
      :consumable,
      name: "MyString",
      calories: 1,
      carbs_in_grams: 1,
      protein_in_grams: 1,
      total_fat_in_grams: 1,
      sodium_in_mg: 1
    )
  }

  before(:each) do
    assign(:consumable, consumable)
  end

  it "renders the edit consumable form" do
    render

    assert_select "form[action=?][method=?]", consumable_path(consumable), "post" do
      assert_select "input[name=?]", "consumable[name]"

      assert_select "input[name=?]", "consumable[calories]"

      assert_select "input[name=?]", "consumable[carbs_in_grams]"

      assert_select "input[name=?]", "consumable[protein_in_grams]"

      assert_select "input[name=?]", "consumable[total_fat_in_grams]"

      assert_select "input[name=?]", "consumable[sodium_in_mg]"
    end
  end
end
