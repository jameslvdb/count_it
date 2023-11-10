require "rails_helper"

RSpec.describe "daily_logs/new", type: :view do
  before(:each) do
    assign(:daily_log, DailyLog.new(
      weight: 1.5
    ))
  end

  it "renders new daily_log form" do
    render

    assert_select "form[action=?][method=?]", daily_logs_path, "post" do
      assert_select "input[name=?]", "daily_log[weight]"
    end
  end
end
