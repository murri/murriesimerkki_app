require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CaravanLenghtsController do

  def mock_caravan_lenght(stubs={})
    @mock_caravan_lenght ||= mock_model(CaravanLenght, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all caravan_lenghts as @caravan_lenghts" do
      CaravanLenght.stub(:all) { [mock_caravan_lenght] }
      get :index
      assigns(:caravan_lenghts).should eq([mock_caravan_lenght])
    end
  end

  describe "GET show" do
    it "assigns the requested caravan_lenght as @caravan_lenght" do
      CaravanLenght.stub(:find).with("37") { mock_caravan_lenght }
      get :show, :id => "37"
      assigns(:caravan_lenght).should be(mock_caravan_lenght)
    end
  end

  describe "GET new" do
    it "assigns a new caravan_lenght as @caravan_lenght" do
      CaravanLenght.stub(:new) { mock_caravan_lenght }
      get :new
      assigns(:caravan_lenght).should be(mock_caravan_lenght)
    end
  end

  describe "GET edit" do
    it "assigns the requested caravan_lenght as @caravan_lenght" do
      CaravanLenght.stub(:find).with("37") { mock_caravan_lenght }
      get :edit, :id => "37"
      assigns(:caravan_lenght).should be(mock_caravan_lenght)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created caravan_lenght as @caravan_lenght" do
        CaravanLenght.stub(:new).with({'these' => 'params'}) { mock_caravan_lenght(:save => true) }
        post :create, :caravan_lenght => {'these' => 'params'}
        assigns(:caravan_lenght).should be(mock_caravan_lenght)
      end

      it "redirects to the created caravan_lenght" do
        CaravanLenght.stub(:new) { mock_caravan_lenght(:save => true) }
        post :create, :caravan_lenght => {}
        response.should redirect_to(caravan_lenght_url(mock_caravan_lenght))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved caravan_lenght as @caravan_lenght" do
        CaravanLenght.stub(:new).with({'these' => 'params'}) { mock_caravan_lenght(:save => false) }
        post :create, :caravan_lenght => {'these' => 'params'}
        assigns(:caravan_lenght).should be(mock_caravan_lenght)
      end

      it "re-renders the 'new' template" do
        CaravanLenght.stub(:new) { mock_caravan_lenght(:save => false) }
        post :create, :caravan_lenght => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested caravan_lenght" do
        CaravanLenght.stub(:find).with("37") { mock_caravan_lenght }
        mock_caravan_lenght.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :caravan_lenght => {'these' => 'params'}
      end

      it "assigns the requested caravan_lenght as @caravan_lenght" do
        CaravanLenght.stub(:find) { mock_caravan_lenght(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:caravan_lenght).should be(mock_caravan_lenght)
      end

      it "redirects to the caravan_lenght" do
        CaravanLenght.stub(:find) { mock_caravan_lenght(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(caravan_lenght_url(mock_caravan_lenght))
      end
    end

    describe "with invalid params" do
      it "assigns the caravan_lenght as @caravan_lenght" do
        CaravanLenght.stub(:find) { mock_caravan_lenght(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:caravan_lenght).should be(mock_caravan_lenght)
      end

      it "re-renders the 'edit' template" do
        CaravanLenght.stub(:find) { mock_caravan_lenght(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested caravan_lenght" do
      CaravanLenght.stub(:find).with("37") { mock_caravan_lenght }
      mock_caravan_lenght.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the caravan_lenghts list" do
      CaravanLenght.stub(:find) { mock_caravan_lenght }
      delete :destroy, :id => "1"
      response.should redirect_to(caravan_lenghts_url)
    end
  end

end
