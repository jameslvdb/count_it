require "rails_helper"

RSpec.describe "daily_logs/edit", type: :view do
  let(:daily_log) {
    DailyLog.create!(
      weight: 1.5
    )
  }

  before(:each) do
    assign(:daily_log, daily_log)
  end

  it "renders the edit daily_log form" do
    render

    assert_select "form[action=?][method=?]", daily_log_path(daily_log), "post" do
      assert_select "input[name=?]", "daily_log[weight]"
    end
  end
end
