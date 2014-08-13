require 'rails_helper'

describe ParsersController do
  context "when user not logged in" do
    describe "GET #index" do
      it "redirects to login page" do
        get :index
        expect(response).to redirect_to new_user_session_path
      end
    end
  end

  context "when user logged in with role admin" do
    let(:user) { FactoryGirl.create(:user, role: :admin) }
    subject { FactoryGirl.create(:parser)}

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
        expect(assigns(:parsers)).to eq([subject])
      end
    end
    describe "GET #show" do
      it "assigns the requested project to subject" do
        get :show, id: subject
        expect(assigns(:parser)).to eq(subject)
      end

      it "renders the :show view" do
        get :show, id: subject
        expect(response).to render_template :show
      end

    end
    describe "GET #new" do
      it "assigns the requested project to subject" do
        get :new
        expect(assigns(:parser)).to be_new_record
      end

      it "renders the :new view" do
        get :new
        expect(response).to render_template :new
      end
    end

    describe "GET #edit" do
      it "assigns the requested project to subject" do
        get :edit, id: subject
        expect(assigns(:parser)).to eq(subject)
      end

      it "renders the :edit view" do
        get :edit, id: subject
        expect(response).to render_template :edit
      end
    end

    describe "POST #create" do
      context "with valid attributes" do
        it "create new object" do
          expect{
            post :create, parser: FactoryGirl.attributes_for(:parser)
          }.to change(Parser, :count).by(1)
        end

        it "redirect to index path" do

          post :create, parser: FactoryGirl.attributes_for(:parser)
          expect(response).to redirect_to parsers_path
        end
      end
    end
  end

  context "when user logged in with role user" do
    let(:user) { FactoryGirl.create(:user, role: :user) }
    subject { FactoryGirl.create(:parser)}

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
        expect(assigns(:parsers)).to eq([subject])
      end
    end
    describe "GET #show" do
      it "assigns the requested project to subject" do
        get :show, id: subject
        expect(assigns(:parser)).to eq(subject)
      end

      it "renders the :show view" do
        get :show, id: subject
        expect(response).to render_template :show
      end

    end
  end
end
