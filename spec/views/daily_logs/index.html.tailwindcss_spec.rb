require "rails_helper"

RSpec.describe "daily_logs/index", type: :view do
  before(:each) do
    assign(:daily_logs, [
      DailyLog.create!(
        date: Date.today,
        weight: 2.5
      ),
      DailyLog.create!(
        date: Date.yesterday,
        weight: 2.5
      )
    ])
  end

  it "renders a list of daily_logs" do
    render
    cell_selector = (Rails::VERSION::STRING >= "7") ? "div>p" : "tr>td"
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
  end
end
