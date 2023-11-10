require "rails_helper"

RSpec.describe "meals/index", type: :view do
  before(:each) do
    daily_log = DailyLog.create!(date: Date.today)
    assign(:meals, [
      Meal.create!(
        name: "lunch",
        daily_log: daily_log
      ),
      Meal.create!(
        name: "snack",
        daily_log: daily_log
      )
    ])
  end

  it "renders a list of meals" do
    render
    cell_selector = (Rails::VERSION::STRING >= "7") ? "div>p" : "tr>td"
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Daily log".to_s), count: 2
  end
end
