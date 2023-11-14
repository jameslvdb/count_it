require "rails_helper"

RSpec.describe "meals/index", type: :view do
  before(:each) do
    daily_log = build_stubbed(:daily_log, date: Date.today)
    assign(:meals, [
      build_stubbed(:meal, name: "breakfast", daily_log: daily_log),
      build_stubbed(:meal, name: "lunch", daily_log: daily_log),
      build_stubbed(:meal, name: "snack", daily_log: daily_log)
    ])
  end

  it "renders a list of meals" do
    render
    cell_selector = (Rails::VERSION::STRING >= "7") ? "div>p" : "tr>td"
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 3
    assert_select cell_selector, text: Regexp.new("Daily log".to_s), count: 3
  end
end
