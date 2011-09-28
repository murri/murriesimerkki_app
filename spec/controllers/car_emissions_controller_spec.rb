require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CarEmissionsController do

  def mock_car_emission(stubs={})
    @mock_car_emission ||= mock_model(CarEmission, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all car_emissions as @car_emissions" do
      CarEmission.stub(:all) { [mock_car_emission] }
      get :index
      assigns(:car_emissions).should eq([mock_car_emission])
    end
  end

  describe "GET show" do
    it "assigns the requested car_emission as @car_emission" do
      CarEmission.stub(:find).with("37") { mock_car_emission }
      get :show, :id => "37"
      assigns(:car_emission).should be(mock_car_emission)
    end
  end

  describe "GET new" do
    it "assigns a new car_emission as @car_emission" do
      CarEmission.stub(:new) { mock_car_emission }
      get :new
      assigns(:car_emission).should be(mock_car_emission)
    end
  end

  describe "GET edit" do
    it "assigns the requested car_emission as @car_emission" do
      CarEmission.stub(:find).with("37") { mock_car_emission }
      get :edit, :id => "37"
      assigns(:car_emission).should be(mock_car_emission)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created car_emission as @car_emission" do
        CarEmission.stub(:new).with({'these' => 'params'}) { mock_car_emission(:save => true) }
        post :create, :car_emission => {'these' => 'params'}
        assigns(:car_emission).should be(mock_car_emission)
      end

      it "redirects to the created car_emission" do
        CarEmission.stub(:new) { mock_car_emission(:save => true) }
        post :create, :car_emission => {}
        response.should redirect_to(car_emission_url(mock_car_emission))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved car_emission as @car_emission" do
        CarEmission.stub(:new).with({'these' => 'params'}) { mock_car_emission(:save => false) }
        post :create, :car_emission => {'these' => 'params'}
        assigns(:car_emission).should be(mock_car_emission)
      end

      it "re-renders the 'new' template" do
        CarEmission.stub(:new) { mock_car_emission(:save => false) }
        post :create, :car_emission => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested car_emission" do
        CarEmission.stub(:find).with("37") { mock_car_emission }
        mock_car_emission.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :car_emission => {'these' => 'params'}
      end

      it "assigns the requested car_emission as @car_emission" do
        CarEmission.stub(:find) { mock_car_emission(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:car_emission).should be(mock_car_emission)
      end

      it "redirects to the car_emission" do
        CarEmission.stub(:find) { mock_car_emission(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(car_emission_url(mock_car_emission))
      end
    end

    describe "with invalid params" do
      it "assigns the car_emission as @car_emission" do
        CarEmission.stub(:find) { mock_car_emission(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:car_emission).should be(mock_car_emission)
      end

      it "re-renders the 'edit' template" do
        CarEmission.stub(:find) { mock_car_emission(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested car_emission" do
      CarEmission.stub(:find).with("37") { mock_car_emission }
      mock_car_emission.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the car_emissions list" do
      CarEmission.stub(:find) { mock_car_emission }
      delete :destroy, :id => "1"
      response.should redirect_to(car_emissions_url)
    end
  end

end
