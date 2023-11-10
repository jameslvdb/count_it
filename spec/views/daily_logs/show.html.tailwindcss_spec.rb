require "rails_helper"

RSpec.describe "daily_logs/show", type: :view do
  before(:each) do
    assign(:daily_log, DailyLog.create!(
      weight: 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
  end
end
