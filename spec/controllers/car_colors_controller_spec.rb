require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CarColorsController do

  def mock_car_color(stubs={})
    @mock_car_color ||= mock_model(CarColor, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all car_colors as @car_colors" do
      CarColor.stub(:all) { [mock_car_color] }
      get :index
      assigns(:car_colors).should eq([mock_car_color])
    end
  end

  describe "GET show" do
    it "assigns the requested car_color as @car_color" do
      CarColor.stub(:find).with("37") { mock_car_color }
      get :show, :id => "37"
      assigns(:car_color).should be(mock_car_color)
    end
  end

  describe "GET new" do
    it "assigns a new car_color as @car_color" do
      CarColor.stub(:new) { mock_car_color }
      get :new
      assigns(:car_color).should be(mock_car_color)
    end
  end

  describe "GET edit" do
    it "assigns the requested car_color as @car_color" do
      CarColor.stub(:find).with("37") { mock_car_color }
      get :edit, :id => "37"
      assigns(:car_color).should be(mock_car_color)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created car_color as @car_color" do
        CarColor.stub(:new).with({'these' => 'params'}) { mock_car_color(:save => true) }
        post :create, :car_color => {'these' => 'params'}
        assigns(:car_color).should be(mock_car_color)
      end

      it "redirects to the created car_color" do
        CarColor.stub(:new) { mock_car_color(:save => true) }
        post :create, :car_color => {}
        response.should redirect_to(car_color_url(mock_car_color))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved car_color as @car_color" do
        CarColor.stub(:new).with({'these' => 'params'}) { mock_car_color(:save => false) }
        post :create, :car_color => {'these' => 'params'}
        assigns(:car_color).should be(mock_car_color)
      end

      it "re-renders the 'new' template" do
        CarColor.stub(:new) { mock_car_color(:save => false) }
        post :create, :car_color => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested car_color" do
        CarColor.stub(:find).with("37") { mock_car_color }
        mock_car_color.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :car_color => {'these' => 'params'}
      end

      it "assigns the requested car_color as @car_color" do
        CarColor.stub(:find) { mock_car_color(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:car_color).should be(mock_car_color)
      end

      it "redirects to the car_color" do
        CarColor.stub(:find) { mock_car_color(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(car_color_url(mock_car_color))
      end
    end

    describe "with invalid params" do
      it "assigns the car_color as @car_color" do
        CarColor.stub(:find) { mock_car_color(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:car_color).should be(mock_car_color)
      end

      it "re-renders the 'edit' template" do
        CarColor.stub(:find) { mock_car_color(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested car_color" do
      CarColor.stub(:find).with("37") { mock_car_color }
      mock_car_color.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the car_colors list" do
      CarColor.stub(:find) { mock_car_color }
      delete :destroy, :id => "1"
      response.should redirect_to(car_colors_url)
    end
  end

end
