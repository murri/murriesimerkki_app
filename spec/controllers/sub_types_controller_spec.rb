require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe SubTypesController do

  def mock_sub_type(stubs={})
    @mock_sub_type ||= mock_model(SubType, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all sub_types as @sub_types" do
      SubType.stub(:all) { [mock_sub_type] }
      get :index
      assigns(:sub_types).should eq([mock_sub_type])
    end
  end

  describe "GET show" do
    it "assigns the requested sub_type as @sub_type" do
      SubType.stub(:find).with("37") { mock_sub_type }
      get :show, :id => "37"
      assigns(:sub_type).should be(mock_sub_type)
    end
  end

  describe "GET new" do
    it "assigns a new sub_type as @sub_type" do
      SubType.stub(:new) { mock_sub_type }
      get :new
      assigns(:sub_type).should be(mock_sub_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested sub_type as @sub_type" do
      SubType.stub(:find).with("37") { mock_sub_type }
      get :edit, :id => "37"
      assigns(:sub_type).should be(mock_sub_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created sub_type as @sub_type" do
        SubType.stub(:new).with({'these' => 'params'}) { mock_sub_type(:save => true) }
        post :create, :sub_type => {'these' => 'params'}
        assigns(:sub_type).should be(mock_sub_type)
      end

      it "redirects to the created sub_type" do
        SubType.stub(:new) { mock_sub_type(:save => true) }
        post :create, :sub_type => {}
        response.should redirect_to(sub_type_url(mock_sub_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sub_type as @sub_type" do
        SubType.stub(:new).with({'these' => 'params'}) { mock_sub_type(:save => false) }
        post :create, :sub_type => {'these' => 'params'}
        assigns(:sub_type).should be(mock_sub_type)
      end

      it "re-renders the 'new' template" do
        SubType.stub(:new) { mock_sub_type(:save => false) }
        post :create, :sub_type => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested sub_type" do
        SubType.stub(:find).with("37") { mock_sub_type }
        mock_sub_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :sub_type => {'these' => 'params'}
      end

      it "assigns the requested sub_type as @sub_type" do
        SubType.stub(:find) { mock_sub_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:sub_type).should be(mock_sub_type)
      end

      it "redirects to the sub_type" do
        SubType.stub(:find) { mock_sub_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(sub_type_url(mock_sub_type))
      end
    end

    describe "with invalid params" do
      it "assigns the sub_type as @sub_type" do
        SubType.stub(:find) { mock_sub_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:sub_type).should be(mock_sub_type)
      end

      it "re-renders the 'edit' template" do
        SubType.stub(:find) { mock_sub_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sub_type" do
      SubType.stub(:find).with("37") { mock_sub_type }
      mock_sub_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the sub_types list" do
      SubType.stub(:find) { mock_sub_type }
      delete :destroy, :id => "1"
      response.should redirect_to(sub_types_url)
    end
  end

end