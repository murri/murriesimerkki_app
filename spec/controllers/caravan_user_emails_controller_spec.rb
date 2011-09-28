require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CaravanUserEmailsController do

  def mock_caravan_user_email(stubs={})
    @mock_caravan_user_email ||= mock_model(CaravanUserEmail, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all caravan_user_emails as @caravan_user_emails" do
      CaravanUserEmail.stub(:all) { [mock_caravan_user_email] }
      get :index
      assigns(:caravan_user_emails).should eq([mock_caravan_user_email])
    end
  end

  describe "GET show" do
    it "assigns the requested caravan_user_email as @caravan_user_email" do
      CaravanUserEmail.stub(:find).with("37") { mock_caravan_user_email }
      get :show, :id => "37"
      assigns(:caravan_user_email).should be(mock_caravan_user_email)
    end
  end

  describe "GET new" do
    it "assigns a new caravan_user_email as @caravan_user_email" do
      CaravanUserEmail.stub(:new) { mock_caravan_user_email }
      get :new
      assigns(:caravan_user_email).should be(mock_caravan_user_email)
    end
  end

  describe "GET edit" do
    it "assigns the requested caravan_user_email as @caravan_user_email" do
      CaravanUserEmail.stub(:find).with("37") { mock_caravan_user_email }
      get :edit, :id => "37"
      assigns(:caravan_user_email).should be(mock_caravan_user_email)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created caravan_user_email as @caravan_user_email" do
        CaravanUserEmail.stub(:new).with({'these' => 'params'}) { mock_caravan_user_email(:save => true) }
        post :create, :caravan_user_email => {'these' => 'params'}
        assigns(:caravan_user_email).should be(mock_caravan_user_email)
      end

      it "redirects to the created caravan_user_email" do
        CaravanUserEmail.stub(:new) { mock_caravan_user_email(:save => true) }
        post :create, :caravan_user_email => {}
        response.should redirect_to(caravan_user_email_url(mock_caravan_user_email))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved caravan_user_email as @caravan_user_email" do
        CaravanUserEmail.stub(:new).with({'these' => 'params'}) { mock_caravan_user_email(:save => false) }
        post :create, :caravan_user_email => {'these' => 'params'}
        assigns(:caravan_user_email).should be(mock_caravan_user_email)
      end

      it "re-renders the 'new' template" do
        CaravanUserEmail.stub(:new) { mock_caravan_user_email(:save => false) }
        post :create, :caravan_user_email => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested caravan_user_email" do
        CaravanUserEmail.stub(:find).with("37") { mock_caravan_user_email }
        mock_caravan_user_email.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :caravan_user_email => {'these' => 'params'}
      end

      it "assigns the requested caravan_user_email as @caravan_user_email" do
        CaravanUserEmail.stub(:find) { mock_caravan_user_email(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:caravan_user_email).should be(mock_caravan_user_email)
      end

      it "redirects to the caravan_user_email" do
        CaravanUserEmail.stub(:find) { mock_caravan_user_email(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(caravan_user_email_url(mock_caravan_user_email))
      end
    end

    describe "with invalid params" do
      it "assigns the caravan_user_email as @caravan_user_email" do
        CaravanUserEmail.stub(:find) { mock_caravan_user_email(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:caravan_user_email).should be(mock_caravan_user_email)
      end

      it "re-renders the 'edit' template" do
        CaravanUserEmail.stub(:find) { mock_caravan_user_email(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested caravan_user_email" do
      CaravanUserEmail.stub(:find).with("37") { mock_caravan_user_email }
      mock_caravan_user_email.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the caravan_user_emails list" do
      CaravanUserEmail.stub(:find) { mock_caravan_user_email }
      delete :destroy, :id => "1"
      response.should redirect_to(caravan_user_emails_url)
    end
  end

end
