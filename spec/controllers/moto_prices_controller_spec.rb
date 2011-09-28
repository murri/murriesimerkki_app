require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe MotoPricesController do

  def mock_moto_price(stubs={})
    @mock_moto_price ||= mock_model(MotoPrice, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all moto_prices as @moto_prices" do
      MotoPrice.stub(:all) { [mock_moto_price] }
      get :index
      assigns(:moto_prices).should eq([mock_moto_price])
    end
  end

  describe "GET show" do
    it "assigns the requested moto_price as @moto_price" do
      MotoPrice.stub(:find).with("37") { mock_moto_price }
      get :show, :id => "37"
      assigns(:moto_price).should be(mock_moto_price)
    end
  end

  describe "GET new" do
    it "assigns a new moto_price as @moto_price" do
      MotoPrice.stub(:new) { mock_moto_price }
      get :new
      assigns(:moto_price).should be(mock_moto_price)
    end
  end

  describe "GET edit" do
    it "assigns the requested moto_price as @moto_price" do
      MotoPrice.stub(:find).with("37") { mock_moto_price }
      get :edit, :id => "37"
      assigns(:moto_price).should be(mock_moto_price)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created moto_price as @moto_price" do
        MotoPrice.stub(:new).with({'these' => 'params'}) { mock_moto_price(:save => true) }
        post :create, :moto_price => {'these' => 'params'}
        assigns(:moto_price).should be(mock_moto_price)
      end

      it "redirects to the created moto_price" do
        MotoPrice.stub(:new) { mock_moto_price(:save => true) }
        post :create, :moto_price => {}
        response.should redirect_to(moto_price_url(mock_moto_price))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved moto_price as @moto_price" do
        MotoPrice.stub(:new).with({'these' => 'params'}) { mock_moto_price(:save => false) }
        post :create, :moto_price => {'these' => 'params'}
        assigns(:moto_price).should be(mock_moto_price)
      end

      it "re-renders the 'new' template" do
        MotoPrice.stub(:new) { mock_moto_price(:save => false) }
        post :create, :moto_price => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested moto_price" do
        MotoPrice.stub(:find).with("37") { mock_moto_price }
        mock_moto_price.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :moto_price => {'these' => 'params'}
      end

      it "assigns the requested moto_price as @moto_price" do
        MotoPrice.stub(:find) { mock_moto_price(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:moto_price).should be(mock_moto_price)
      end

      it "redirects to the moto_price" do
        MotoPrice.stub(:find) { mock_moto_price(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(moto_price_url(mock_moto_price))
      end
    end

    describe "with invalid params" do
      it "assigns the moto_price as @moto_price" do
        MotoPrice.stub(:find) { mock_moto_price(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:moto_price).should be(mock_moto_price)
      end

      it "re-renders the 'edit' template" do
        MotoPrice.stub(:find) { mock_moto_price(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested moto_price" do
      MotoPrice.stub(:find).with("37") { mock_moto_price }
      mock_moto_price.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the moto_prices list" do
      MotoPrice.stub(:find) { mock_moto_price }
      delete :destroy, :id => "1"
      response.should redirect_to(moto_prices_url)
    end
  end

end
