require "rails_helper"

RSpec.describe "meals/index", type: :view do
  before(:each) do
    assign(:meals, [
      Meal.create!(
        name: "Name",
        daily_log: nil
      ),
      Meal.create!(
        name: "Name",
        daily_log: nil
      )
    ])
  end

  it "renders a list of meals" do
    render
    cell_selector = (Rails::VERSION::STRING >= "7") ? "div>p" : "tr>td"
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
