require "rails_helper"

RSpec.describe "meals/edit", type: :view do
  let(:meal) {
    build_stubbed(
      :meal,
      name: "breakfast",
      daily_log: build_stubbed(:daily_log, date: Date.today)
    )
  }

  before(:each) do
    assign(:meal, meal)
  end

  it "renders the edit meal form" do
    render

    assert_select "form[action=?][method=?]", meal_path(meal), "post" do
      assert_select "input[name=?]", "meal[name]"

      assert_select "input[name=?]", "meal[daily_log_id]"
    end
  end
end
