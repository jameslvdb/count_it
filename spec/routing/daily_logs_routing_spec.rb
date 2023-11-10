require "rails_helper"

RSpec.describe DailyLogsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/daily_logs").to route_to("daily_logs#index")
    end

    it "routes to #new" do
      expect(get: "/daily_logs/new").to route_to("daily_logs#new")
    end

    it "routes to #show" do
      expect(get: "/daily_logs/1").to route_to("daily_logs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/daily_logs/1/edit").to route_to("daily_logs#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/daily_logs").to route_to("daily_logs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/daily_logs/1").to route_to("daily_logs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/daily_logs/1").to route_to("daily_logs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/daily_logs/1").to route_to("daily_logs#destroy", id: "1")
    end
  end
end
