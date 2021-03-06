require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe BoatLengthsController do

  def mock_boat_length(stubs={})
    @mock_boat_length ||= mock_model(BoatLength, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all boat_lengths as @boat_lengths" do
      BoatLength.stub(:all) { [mock_boat_length] }
      get :index
      assigns(:boat_lengths).should eq([mock_boat_length])
    end
  end

  describe "GET show" do
    it "assigns the requested boat_length as @boat_length" do
      BoatLength.stub(:find).with("37") { mock_boat_length }
      get :show, :id => "37"
      assigns(:boat_length).should be(mock_boat_length)
    end
  end

  describe "GET new" do
    it "assigns a new boat_length as @boat_length" do
      BoatLength.stub(:new) { mock_boat_length }
      get :new
      assigns(:boat_length).should be(mock_boat_length)
    end
  end

  describe "GET edit" do
    it "assigns the requested boat_length as @boat_length" do
      BoatLength.stub(:find).with("37") { mock_boat_length }
      get :edit, :id => "37"
      assigns(:boat_length).should be(mock_boat_length)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created boat_length as @boat_length" do
        BoatLength.stub(:new).with({'these' => 'params'}) { mock_boat_length(:save => true) }
        post :create, :boat_length => {'these' => 'params'}
        assigns(:boat_length).should be(mock_boat_length)
      end

      it "redirects to the created boat_length" do
        BoatLength.stub(:new) { mock_boat_length(:save => true) }
        post :create, :boat_length => {}
        response.should redirect_to(boat_length_url(mock_boat_length))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved boat_length as @boat_length" do
        BoatLength.stub(:new).with({'these' => 'params'}) { mock_boat_length(:save => false) }
        post :create, :boat_length => {'these' => 'params'}
        assigns(:boat_length).should be(mock_boat_length)
      end

      it "re-renders the 'new' template" do
        BoatLength.stub(:new) { mock_boat_length(:save => false) }
        post :create, :boat_length => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested boat_length" do
        BoatLength.stub(:find).with("37") { mock_boat_length }
        mock_boat_length.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :boat_length => {'these' => 'params'}
      end

      it "assigns the requested boat_length as @boat_length" do
        BoatLength.stub(:find) { mock_boat_length(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:boat_length).should be(mock_boat_length)
      end

      it "redirects to the boat_length" do
        BoatLength.stub(:find) { mock_boat_length(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(boat_length_url(mock_boat_length))
      end
    end

    describe "with invalid params" do
      it "assigns the boat_length as @boat_length" do
        BoatLength.stub(:find) { mock_boat_length(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:boat_length).should be(mock_boat_length)
      end

      it "re-renders the 'edit' template" do
        BoatLength.stub(:find) { mock_boat_length(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested boat_length" do
      BoatLength.stub(:find).with("37") { mock_boat_length }
      mock_boat_length.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the boat_lengths list" do
      BoatLength.stub(:find) { mock_boat_length }
      delete :destroy, :id => "1"
      response.should redirect_to(boat_lengths_url)
    end
  end

end
