require 'rails_helper'

RSpec.describe CategoriesController, :type => :controller do

  describe "GET create" do
    it "returns http success" do
      get :create
      expect(response).to be_success
    end
  end

  describe "GET read" do
    it "returns http success" do
      get :read
      expect(response).to be_success
    end
  end

  describe "GET update" do
    it "returns http success" do
      get :update
      expect(response).to be_success
    end
  end

  describe "GET delete" do
    it "returns http success" do
      get :delete
      expect(response).to be_success
    end
  end

end
