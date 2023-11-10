require "rails_helper"

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/daily_logs", type: :request do
  # This should return the minimal set of attributes required to create a valid
  # DailyLog. As you add validations to DailyLog, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      date: Date.today,
      weight: 100.0
    }
  }

  let(:invalid_attributes) {
    {
      date: nil,
      weight: nil
    }
  }

  describe "GET /index" do
    it "renders a successful response" do
      DailyLog.create! valid_attributes
      get daily_logs_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      daily_log = DailyLog.create! valid_attributes
      get daily_log_url(daily_log)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_daily_log_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      daily_log = DailyLog.create! valid_attributes
      get edit_daily_log_url(daily_log)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new DailyLog" do
        expect {
          post daily_logs_url, params: {daily_log: valid_attributes}
        }.to change(DailyLog, :count).by(1)
      end

      it "redirects to the created daily_log" do
        post daily_logs_url, params: {daily_log: valid_attributes}
        expect(response).to redirect_to(daily_log_url(DailyLog.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new DailyLog" do
        expect {
          post daily_logs_url, params: {daily_log: invalid_attributes}
        }.to change(DailyLog, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post daily_logs_url, params: {daily_log: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested daily_log" do
        daily_log = DailyLog.create! valid_attributes
        patch daily_log_url(daily_log), params: {daily_log: new_attributes}
        daily_log.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the daily_log" do
        daily_log = DailyLog.create! valid_attributes
        patch daily_log_url(daily_log), params: {daily_log: new_attributes}
        daily_log.reload
        expect(response).to redirect_to(daily_log_url(daily_log))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        daily_log = DailyLog.create! valid_attributes
        patch daily_log_url(daily_log), params: {daily_log: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested daily_log" do
      daily_log = DailyLog.create! valid_attributes
      expect {
        delete daily_log_url(daily_log)
      }.to change(DailyLog, :count).by(-1)
    end

    it "redirects to the daily_logs list" do
      daily_log = DailyLog.create! valid_attributes
      delete daily_log_url(daily_log)
      expect(response).to redirect_to(daily_logs_url)
    end
  end
end
