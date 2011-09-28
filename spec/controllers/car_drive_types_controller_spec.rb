require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CarDriveTypesController do

  def mock_car_drive_type(stubs={})
    @mock_car_drive_type ||= mock_model(CarDriveType, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all car_drive_types as @car_drive_types" do
      CarDriveType.stub(:all) { [mock_car_drive_type] }
      get :index
      assigns(:car_drive_types).should eq([mock_car_drive_type])
    end
  end

  describe "GET show" do
    it "assigns the requested car_drive_type as @car_drive_type" do
      CarDriveType.stub(:find).with("37") { mock_car_drive_type }
      get :show, :id => "37"
      assigns(:car_drive_type).should be(mock_car_drive_type)
    end
  end

  describe "GET new" do
    it "assigns a new car_drive_type as @car_drive_type" do
      CarDriveType.stub(:new) { mock_car_drive_type }
      get :new
      assigns(:car_drive_type).should be(mock_car_drive_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested car_drive_type as @car_drive_type" do
      CarDriveType.stub(:find).with("37") { mock_car_drive_type }
      get :edit, :id => "37"
      assigns(:car_drive_type).should be(mock_car_drive_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created car_drive_type as @car_drive_type" do
        CarDriveType.stub(:new).with({'these' => 'params'}) { mock_car_drive_type(:save => true) }
        post :create, :car_drive_type => {'these' => 'params'}
        assigns(:car_drive_type).should be(mock_car_drive_type)
      end

      it "redirects to the created car_drive_type" do
        CarDriveType.stub(:new) { mock_car_drive_type(:save => true) }
        post :create, :car_drive_type => {}
        response.should redirect_to(car_drive_type_url(mock_car_drive_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved car_drive_type as @car_drive_type" do
        CarDriveType.stub(:new).with({'these' => 'params'}) { mock_car_drive_type(:save => false) }
        post :create, :car_drive_type => {'these' => 'params'}
        assigns(:car_drive_type).should be(mock_car_drive_type)
      end

      it "re-renders the 'new' template" do
        CarDriveType.stub(:new) { mock_car_drive_type(:save => false) }
        post :create, :car_drive_type => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested car_drive_type" do
        CarDriveType.stub(:find).with("37") { mock_car_drive_type }
        mock_car_drive_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :car_drive_type => {'these' => 'params'}
      end

      it "assigns the requested car_drive_type as @car_drive_type" do
        CarDriveType.stub(:find) { mock_car_drive_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:car_drive_type).should be(mock_car_drive_type)
      end

      it "redirects to the car_drive_type" do
        CarDriveType.stub(:find) { mock_car_drive_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(car_drive_type_url(mock_car_drive_type))
      end
    end

    describe "with invalid params" do
      it "assigns the car_drive_type as @car_drive_type" do
        CarDriveType.stub(:find) { mock_car_drive_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:car_drive_type).should be(mock_car_drive_type)
      end

      it "re-renders the 'edit' template" do
        CarDriveType.stub(:find) { mock_car_drive_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested car_drive_type" do
      CarDriveType.stub(:find).with("37") { mock_car_drive_type }
      mock_car_drive_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the car_drive_types list" do
      CarDriveType.stub(:find) { mock_car_drive_type }
      delete :destroy, :id => "1"
      response.should redirect_to(car_drive_types_url)
    end
  end

end
