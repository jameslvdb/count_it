require "rails_helper"

RSpec.describe "consumables/show", type: :view do
  before(:each) do
    assign(:consumable, Consumable.create!(
      name: "Name",
      calories: 2,
      carbs_in_grams: 3,
      protein_in_grams: 4,
      total_fat_in_grams: 5,
      sodium_in_mg: 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end
