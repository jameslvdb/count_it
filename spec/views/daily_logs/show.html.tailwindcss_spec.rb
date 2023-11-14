require "rails_helper"

RSpec.describe "daily_logs/show", type: :view do
  describe "when the daily log has no weight" do
    before(:each) do
      assign(:daily_log, build_stubbed(
        :daily_log,
        date: Date.today,
        weight: nil
      ))
    end

    it "asks user to record their weight" do
      render
      expect(rendered).to match(/Record your weight/)
    end
  end

  describe "when the daily log has a weight" do
    before(:each) do
      assign(:daily_log, build_stubbed(
        :daily_log,
        date: Date.today,
        weight: 2.5
      ))
    end

    it "asks the user if they want to edit their weight" do
      render
      expect(rendered).to match(/Edit weight/)
    end

    it "renders the weight attribute" do
      render
      expect(rendered).to match(/2.5/)
    end
  end
end
