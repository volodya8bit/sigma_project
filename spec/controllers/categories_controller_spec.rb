require 'rails_helper'
require 'spec_helper'

RSpec.describe CategoriesController, :type => :controller do

describe CategoriesController do

  context "when user not logget in" do
    describe "Get #index" do
      it "redirects to login page" do
        get :index
        expect(response).to redirect_to new_user_session_path
      end

    end

  end

  context  "when user logged in" do
    let(:user) { FactoryGirl.create(:user) }
    subject { FactoryGirl.create(:category) }

    before do
      sign_in user
    end

    describe "GET #index" do
      if "render :index view" do
        get :index
        expect(response).to render_template :index
      end

      it "assign the request category to subject" do
        get :index
        expect(assigns(:categories)).to eq([subject])
      end

    end

  end
end
end
