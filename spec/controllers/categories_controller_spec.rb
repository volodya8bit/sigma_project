require 'rails_helper'
require 'spec_helper'

describe CategoriesController do
  context "when user not logged in" do
    describe "GET #index" do
      it "redirects to login page" do
        get :index
        expect(response).to redirect_to new_user_session_path
      end
    end
  end
  
  context "when user logged in" do
    let(:user) { FactoryGirl.create(:user) }
    subject { FactoryGirl.create(:category)} 
    
    before do
      sign_in user
    end
    
    describe "GET #index" do
      it "renders the :index view" do
        get :index
        expect(response).to render_template :index
      end
   
      it "assigns the requested project to subject" do
        get :index
        expect(assigns(:category)).to eq([subject])
      end
    end
    describe "GET #show" do
      it "assigns the requested project to subject" do
        get :show, id: subject
        expect(assigns(:category)).to eq([subject])
      end

      it "renders the :show view" do
        get :show, id: subject
        expect(response).to render_template :show
      end 
      
    end
    describe "GET #new" do
      it "assigns the requested project to subject" do
        get :new
        expect(assigns(:category)).to be_new_record
      end

      it "renders the :new view" do
        get :new
        expect(response).to render_template :new
      end      
    end
    
    describe "GET #edit" do
      it "assigns the requested project to subject" do
        get :edit id: subject
        expect(assigns(:category)).to eq([subject])
      end

      it "renders the :edit view" do
        get :edit id: subject
        expect(response).to render_template :edit
      end      
    end

    describe "POST #create" do
      contect "with valid attributes" do
        it "create new object" do
          expect{
            post :create, category: FactoryGirl.attributes_for(:category)
          }.to change(Category, :count).by(1)
        end
        
        it "redirect to index path" do
          
            post :create, category: FactoryGirl.attributes_for(:category)
            expect(response).to redirect_to projects_path
        end 
      end      
    end
  end
end
