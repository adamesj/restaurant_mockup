require 'rails_helper'

RSpec.describe RestaurantsController, type: :controller do
  describe "GET index" do
    it "assigns all restaurants to a variable" do
      chilis = create(:restaurant, name: "Chili's")
      shack = create(:restaurant, name: "Shake Shack")

      get :index

      expect(assigns(:restaurants)).to match_array [chilis, shack]

    end

    it "renders the index view page" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET show" do
    it "assigns the restaurant to a variable" do
      restaurant = create(:restaurant)
      get :show, params: { id: restaurant }
      expect(assigns(:restaurant)).to eq restaurant
    end

    it "renders the show view page" do
      restaurant = create(:restaurant)
      get :show, params: { id: restaurant }
      expect(response).to render_template :show
    end
  end


  describe "POST create" do
    it "assigns the restaurant to a variable" do
      expect{ post :create, params: {restaurant: attributes_for(:restaurant)} }.to change{Restaurant.count}.by(1)
    end

    it "redirects to the root path when the input is valid" do
      post :create, params: {restaurant: attributes_for(:restaurant)}
      expect(response).to redirect_to root_path
    end

    it "renders new restaurant page when the input in invalid" do
      post :create, params: {restaurant: attributes_for(:invalid_restaurant)}
      expect(response).to render_template :new
    end
  end
end