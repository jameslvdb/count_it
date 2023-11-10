require "rails_helper"

RSpec.describe "meals/new", type: :view do
  before(:each) do
    assign(:meal, Meal.new(
      name: "MyString",
      daily_log: nil
    ))
  end

  it "renders new meal form" do
    render

    assert_select "form[action=?][method=?]", meals_path, "post" do
      assert_select "input[name=?]", "meal[name]"

      assert_select "input[name=?]", "meal[daily_log_id]"
    end
  end
end
