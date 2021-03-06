require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CarWeightsController do

  def mock_car_weight(stubs={})
    @mock_car_weight ||= mock_model(CarWeight, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all car_weights as @car_weights" do
      CarWeight.stub(:all) { [mock_car_weight] }
      get :index
      assigns(:car_weights).should eq([mock_car_weight])
    end
  end

  describe "GET show" do
    it "assigns the requested car_weight as @car_weight" do
      CarWeight.stub(:find).with("37") { mock_car_weight }
      get :show, :id => "37"
      assigns(:car_weight).should be(mock_car_weight)
    end
  end

  describe "GET new" do
    it "assigns a new car_weight as @car_weight" do
      CarWeight.stub(:new) { mock_car_weight }
      get :new
      assigns(:car_weight).should be(mock_car_weight)
    end
  end

  describe "GET edit" do
    it "assigns the requested car_weight as @car_weight" do
      CarWeight.stub(:find).with("37") { mock_car_weight }
      get :edit, :id => "37"
      assigns(:car_weight).should be(mock_car_weight)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created car_weight as @car_weight" do
        CarWeight.stub(:new).with({'these' => 'params'}) { mock_car_weight(:save => true) }
        post :create, :car_weight => {'these' => 'params'}
        assigns(:car_weight).should be(mock_car_weight)
      end

      it "redirects to the created car_weight" do
        CarWeight.stub(:new) { mock_car_weight(:save => true) }
        post :create, :car_weight => {}
        response.should redirect_to(car_weight_url(mock_car_weight))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved car_weight as @car_weight" do
        CarWeight.stub(:new).with({'these' => 'params'}) { mock_car_weight(:save => false) }
        post :create, :car_weight => {'these' => 'params'}
        assigns(:car_weight).should be(mock_car_weight)
      end

      it "re-renders the 'new' template" do
        CarWeight.stub(:new) { mock_car_weight(:save => false) }
        post :create, :car_weight => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested car_weight" do
        CarWeight.stub(:find).with("37") { mock_car_weight }
        mock_car_weight.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :car_weight => {'these' => 'params'}
      end

      it "assigns the requested car_weight as @car_weight" do
        CarWeight.stub(:find) { mock_car_weight(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:car_weight).should be(mock_car_weight)
      end

      it "redirects to the car_weight" do
        CarWeight.stub(:find) { mock_car_weight(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(car_weight_url(mock_car_weight))
      end
    end

    describe "with invalid params" do
      it "assigns the car_weight as @car_weight" do
        CarWeight.stub(:find) { mock_car_weight(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:car_weight).should be(mock_car_weight)
      end

      it "re-renders the 'edit' template" do
        CarWeight.stub(:find) { mock_car_weight(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested car_weight" do
      CarWeight.stub(:find).with("37") { mock_car_weight }
      mock_car_weight.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the car_weights list" do
      CarWeight.stub(:find) { mock_car_weight }
      delete :destroy, :id => "1"
      response.should redirect_to(car_weights_url)
    end
  end

end
