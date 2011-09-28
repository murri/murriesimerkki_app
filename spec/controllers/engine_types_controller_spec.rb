require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe EngineTypesController do

  def mock_engine_type(stubs={})
    @mock_engine_type ||= mock_model(EngineType, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all engine_types as @engine_types" do
      EngineType.stub(:all) { [mock_engine_type] }
      get :index
      assigns(:engine_types).should eq([mock_engine_type])
    end
  end

  describe "GET show" do
    it "assigns the requested engine_type as @engine_type" do
      EngineType.stub(:find).with("37") { mock_engine_type }
      get :show, :id => "37"
      assigns(:engine_type).should be(mock_engine_type)
    end
  end

  describe "GET new" do
    it "assigns a new engine_type as @engine_type" do
      EngineType.stub(:new) { mock_engine_type }
      get :new
      assigns(:engine_type).should be(mock_engine_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested engine_type as @engine_type" do
      EngineType.stub(:find).with("37") { mock_engine_type }
      get :edit, :id => "37"
      assigns(:engine_type).should be(mock_engine_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created engine_type as @engine_type" do
        EngineType.stub(:new).with({'these' => 'params'}) { mock_engine_type(:save => true) }
        post :create, :engine_type => {'these' => 'params'}
        assigns(:engine_type).should be(mock_engine_type)
      end

      it "redirects to the created engine_type" do
        EngineType.stub(:new) { mock_engine_type(:save => true) }
        post :create, :engine_type => {}
        response.should redirect_to(engine_type_url(mock_engine_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved engine_type as @engine_type" do
        EngineType.stub(:new).with({'these' => 'params'}) { mock_engine_type(:save => false) }
        post :create, :engine_type => {'these' => 'params'}
        assigns(:engine_type).should be(mock_engine_type)
      end

      it "re-renders the 'new' template" do
        EngineType.stub(:new) { mock_engine_type(:save => false) }
        post :create, :engine_type => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested engine_type" do
        EngineType.stub(:find).with("37") { mock_engine_type }
        mock_engine_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :engine_type => {'these' => 'params'}
      end

      it "assigns the requested engine_type as @engine_type" do
        EngineType.stub(:find) { mock_engine_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:engine_type).should be(mock_engine_type)
      end

      it "redirects to the engine_type" do
        EngineType.stub(:find) { mock_engine_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(engine_type_url(mock_engine_type))
      end
    end

    describe "with invalid params" do
      it "assigns the engine_type as @engine_type" do
        EngineType.stub(:find) { mock_engine_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:engine_type).should be(mock_engine_type)
      end

      it "re-renders the 'edit' template" do
        EngineType.stub(:find) { mock_engine_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested engine_type" do
      EngineType.stub(:find).with("37") { mock_engine_type }
      mock_engine_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the engine_types list" do
      EngineType.stub(:find) { mock_engine_type }
      delete :destroy, :id => "1"
      response.should redirect_to(engine_types_url)
    end
  end

end
