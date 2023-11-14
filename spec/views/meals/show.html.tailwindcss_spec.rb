require "rails_helper"

RSpec.describe "meals/show", type: :view do
  before(:each) do
    assign(:meal, build_stubbed(
      :meal,
      name: "dinner",
      daily_log: build_stubbed(:daily_log, date: Date.today)
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
