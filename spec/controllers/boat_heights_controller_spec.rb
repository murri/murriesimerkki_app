require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe BoatHeightsController do

  def mock_boat_height(stubs={})
    @mock_boat_height ||= mock_model(BoatHeight, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all boat_heights as @boat_heights" do
      BoatHeight.stub(:all) { [mock_boat_height] }
      get :index
      assigns(:boat_heights).should eq([mock_boat_height])
    end
  end

  describe "GET show" do
    it "assigns the requested boat_height as @boat_height" do
      BoatHeight.stub(:find).with("37") { mock_boat_height }
      get :show, :id => "37"
      assigns(:boat_height).should be(mock_boat_height)
    end
  end

  describe "GET new" do
    it "assigns a new boat_height as @boat_height" do
      BoatHeight.stub(:new) { mock_boat_height }
      get :new
      assigns(:boat_height).should be(mock_boat_height)
    end
  end

  describe "GET edit" do
    it "assigns the requested boat_height as @boat_height" do
      BoatHeight.stub(:find).with("37") { mock_boat_height }
      get :edit, :id => "37"
      assigns(:boat_height).should be(mock_boat_height)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created boat_height as @boat_height" do
        BoatHeight.stub(:new).with({'these' => 'params'}) { mock_boat_height(:save => true) }
        post :create, :boat_height => {'these' => 'params'}
        assigns(:boat_height).should be(mock_boat_height)
      end

      it "redirects to the created boat_height" do
        BoatHeight.stub(:new) { mock_boat_height(:save => true) }
        post :create, :boat_height => {}
        response.should redirect_to(boat_height_url(mock_boat_height))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved boat_height as @boat_height" do
        BoatHeight.stub(:new).with({'these' => 'params'}) { mock_boat_height(:save => false) }
        post :create, :boat_height => {'these' => 'params'}
        assigns(:boat_height).should be(mock_boat_height)
      end

      it "re-renders the 'new' template" do
        BoatHeight.stub(:new) { mock_boat_height(:save => false) }
        post :create, :boat_height => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested boat_height" do
        BoatHeight.stub(:find).with("37") { mock_boat_height }
        mock_boat_height.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :boat_height => {'these' => 'params'}
      end

      it "assigns the requested boat_height as @boat_height" do
        BoatHeight.stub(:find) { mock_boat_height(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:boat_height).should be(mock_boat_height)
      end

      it "redirects to the boat_height" do
        BoatHeight.stub(:find) { mock_boat_height(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(boat_height_url(mock_boat_height))
      end
    end

    describe "with invalid params" do
      it "assigns the boat_height as @boat_height" do
        BoatHeight.stub(:find) { mock_boat_height(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:boat_height).should be(mock_boat_height)
      end

      it "re-renders the 'edit' template" do
        BoatHeight.stub(:find) { mock_boat_height(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested boat_height" do
      BoatHeight.stub(:find).with("37") { mock_boat_height }
      mock_boat_height.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the boat_heights list" do
      BoatHeight.stub(:find) { mock_boat_height }
      delete :destroy, :id => "1"
      response.should redirect_to(boat_heights_url)
    end
  end

end
