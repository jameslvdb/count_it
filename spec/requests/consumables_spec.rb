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

RSpec.describe "/consumables", type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Consumable. As you add validations to Consumable, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      name: "Cookie",
      calories: 100,
      protein_in_grams: 10,
      total_fat_in_grams: 10,
      carbs_in_grams: 10,
      sodium_in_mg: 10
    }
  }

  let(:invalid_attributes) {
    {
      name: nil,
      calories: nil,
      protein_in_grams: nil,
      total_fat_in_grams: nil,
      carbs_in_grams: nil,
      sodium_in_mg: nil
    }
  }

  describe "GET /index" do
    it "renders a successful response" do
      Consumable.create! valid_attributes
      get consumables_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      consumable = Consumable.create! valid_attributes
      get consumable_url(consumable)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_consumable_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      consumable = Consumable.create! valid_attributes
      get edit_consumable_url(consumable)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Consumable" do
        expect {
          post consumables_url, params: {consumable: valid_attributes}
        }.to change(Consumable, :count).by(1)
      end

      it "redirects to the created consumable" do
        post consumables_url, params: {consumable: valid_attributes}
        expect(response).to redirect_to(consumable_url(Consumable.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Consumable" do
        expect {
          post consumables_url, params: {consumable: invalid_attributes}
        }.to change(Consumable, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post consumables_url, params: {consumable: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        {
          name: "Chocolate Chip Cookie",
          calories: 200,
          protein_in_grams: 20,
          total_fat_in_grams: 20,
          carbs_in_grams: 20,
          sodium_in_mg: 20
        }
      }

      it "updates the requested consumable" do
        consumable = Consumable.create! valid_attributes
        patch consumable_url(consumable), params: {consumable: new_attributes}
        consumable.reload
        expect(consumable.name).to eq("Chocolate Chip Cookie")
        expect(consumable.calories).to eq(200)
        expect(consumable.protein_in_grams).to eq(20)
        expect(consumable.total_fat_in_grams).to eq(20)
        expect(consumable.carbs_in_grams).to eq(20)
        expect(consumable.sodium_in_mg).to eq(20)
      end

      it "redirects to the consumable" do
        consumable = Consumable.create! valid_attributes
        patch consumable_url(consumable), params: {consumable: new_attributes}
        consumable.reload
        expect(response).to redirect_to(consumable_url(consumable))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        consumable = Consumable.create! valid_attributes
        patch consumable_url(consumable), params: {consumable: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested consumable" do
      consumable = Consumable.create! valid_attributes
      expect {
        delete consumable_url(consumable)
      }.to change(Consumable, :count).by(-1)
    end

    it "redirects to the consumables list" do
      consumable = Consumable.create! valid_attributes
      delete consumable_url(consumable)
      expect(response).to redirect_to(consumables_url)
    end
  end
end
