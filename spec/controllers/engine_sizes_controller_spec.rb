require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe EngineSizesController do

  def mock_engine_size(stubs={})
    @mock_engine_size ||= mock_model(EngineSize, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all engine_sizes as @engine_sizes" do
      EngineSize.stub(:all) { [mock_engine_size] }
      get :index
      assigns(:engine_sizes).should eq([mock_engine_size])
    end
  end

  describe "GET show" do
    it "assigns the requested engine_size as @engine_size" do
      EngineSize.stub(:find).with("37") { mock_engine_size }
      get :show, :id => "37"
      assigns(:engine_size).should be(mock_engine_size)
    end
  end

  describe "GET new" do
    it "assigns a new engine_size as @engine_size" do
      EngineSize.stub(:new) { mock_engine_size }
      get :new
      assigns(:engine_size).should be(mock_engine_size)
    end
  end

  describe "GET edit" do
    it "assigns the requested engine_size as @engine_size" do
      EngineSize.stub(:find).with("37") { mock_engine_size }
      get :edit, :id => "37"
      assigns(:engine_size).should be(mock_engine_size)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created engine_size as @engine_size" do
        EngineSize.stub(:new).with({'these' => 'params'}) { mock_engine_size(:save => true) }
        post :create, :engine_size => {'these' => 'params'}
        assigns(:engine_size).should be(mock_engine_size)
      end

      it "redirects to the created engine_size" do
        EngineSize.stub(:new) { mock_engine_size(:save => true) }
        post :create, :engine_size => {}
        response.should redirect_to(engine_size_url(mock_engine_size))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved engine_size as @engine_size" do
        EngineSize.stub(:new).with({'these' => 'params'}) { mock_engine_size(:save => false) }
        post :create, :engine_size => {'these' => 'params'}
        assigns(:engine_size).should be(mock_engine_size)
      end

      it "re-renders the 'new' template" do
        EngineSize.stub(:new) { mock_engine_size(:save => false) }
        post :create, :engine_size => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested engine_size" do
        EngineSize.stub(:find).with("37") { mock_engine_size }
        mock_engine_size.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :engine_size => {'these' => 'params'}
      end

      it "assigns the requested engine_size as @engine_size" do
        EngineSize.stub(:find) { mock_engine_size(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:engine_size).should be(mock_engine_size)
      end

      it "redirects to the engine_size" do
        EngineSize.stub(:find) { mock_engine_size(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(engine_size_url(mock_engine_size))
      end
    end

    describe "with invalid params" do
      it "assigns the engine_size as @engine_size" do
        EngineSize.stub(:find) { mock_engine_size(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:engine_size).should be(mock_engine_size)
      end

      it "re-renders the 'edit' template" do
        EngineSize.stub(:find) { mock_engine_size(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested engine_size" do
      EngineSize.stub(:find).with("37") { mock_engine_size }
      mock_engine_size.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the engine_sizes list" do
      EngineSize.stub(:find) { mock_engine_size }
      delete :destroy, :id => "1"
      response.should redirect_to(engine_sizes_url)
    end
  end

end
