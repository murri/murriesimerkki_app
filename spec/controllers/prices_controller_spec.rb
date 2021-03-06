require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe PricesController do

  def mock_price(stubs={})
    @mock_price ||= mock_model(Price, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all prices as @prices" do
      Price.stub(:all) { [mock_price] }
      get :index
      assigns(:prices).should eq([mock_price])
    end
  end

  describe "GET show" do
    it "assigns the requested price as @price" do
      Price.stub(:find).with("37") { mock_price }
      get :show, :id => "37"
      assigns(:price).should be(mock_price)
    end
  end

  describe "GET new" do
    it "assigns a new price as @price" do
      Price.stub(:new) { mock_price }
      get :new
      assigns(:price).should be(mock_price)
    end
  end

  describe "GET edit" do
    it "assigns the requested price as @price" do
      Price.stub(:find).with("37") { mock_price }
      get :edit, :id => "37"
      assigns(:price).should be(mock_price)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created price as @price" do
        Price.stub(:new).with({'these' => 'params'}) { mock_price(:save => true) }
        post :create, :price => {'these' => 'params'}
        assigns(:price).should be(mock_price)
      end

      it "redirects to the created price" do
        Price.stub(:new) { mock_price(:save => true) }
        post :create, :price => {}
        response.should redirect_to(price_url(mock_price))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved price as @price" do
        Price.stub(:new).with({'these' => 'params'}) { mock_price(:save => false) }
        post :create, :price => {'these' => 'params'}
        assigns(:price).should be(mock_price)
      end

      it "re-renders the 'new' template" do
        Price.stub(:new) { mock_price(:save => false) }
        post :create, :price => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested price" do
        Price.stub(:find).with("37") { mock_price }
        mock_price.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :price => {'these' => 'params'}
      end

      it "assigns the requested price as @price" do
        Price.stub(:find) { mock_price(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:price).should be(mock_price)
      end

      it "redirects to the price" do
        Price.stub(:find) { mock_price(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(price_url(mock_price))
      end
    end

    describe "with invalid params" do
      it "assigns the price as @price" do
        Price.stub(:find) { mock_price(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:price).should be(mock_price)
      end

      it "re-renders the 'edit' template" do
        Price.stub(:find) { mock_price(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested price" do
      Price.stub(:find).with("37") { mock_price }
      mock_price.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the prices list" do
      Price.stub(:find) { mock_price }
      delete :destroy, :id => "1"
      response.should redirect_to(prices_url)
    end
  end

end
