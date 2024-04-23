require "rails_helper"

describe CategoriesController , type: :controller do
  describe "GET index" do
    it "returns the corrct json response" do
      allow_any_instance_of(MealDbApi).to receive(:fetch_categories).and_return({ "categories" => "test" })
      get :index
      expect(response.body).to eq({ "categories" => "test" }.to_json)
    end
  end
end