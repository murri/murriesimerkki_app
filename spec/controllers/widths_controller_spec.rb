require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe WidthsController do

  def mock_width(stubs={})
    @mock_width ||= mock_model(Width, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all widths as @widths" do
      Width.stub(:all) { [mock_width] }
      get :index
      assigns(:widths).should eq([mock_width])
    end
  end

  describe "GET show" do
    it "assigns the requested width as @width" do
      Width.stub(:find).with("37") { mock_width }
      get :show, :id => "37"
      assigns(:width).should be(mock_width)
    end
  end

  describe "GET new" do
    it "assigns a new width as @width" do
      Width.stub(:new) { mock_width }
      get :new
      assigns(:width).should be(mock_width)
    end
  end

  describe "GET edit" do
    it "assigns the requested width as @width" do
      Width.stub(:find).with("37") { mock_width }
      get :edit, :id => "37"
      assigns(:width).should be(mock_width)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created width as @width" do
        Width.stub(:new).with({'these' => 'params'}) { mock_width(:save => true) }
        post :create, :width => {'these' => 'params'}
        assigns(:width).should be(mock_width)
      end

      it "redirects to the created width" do
        Width.stub(:new) { mock_width(:save => true) }
        post :create, :width => {}
        response.should redirect_to(width_url(mock_width))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved width as @width" do
        Width.stub(:new).with({'these' => 'params'}) { mock_width(:save => false) }
        post :create, :width => {'these' => 'params'}
        assigns(:width).should be(mock_width)
      end

      it "re-renders the 'new' template" do
        Width.stub(:new) { mock_width(:save => false) }
        post :create, :width => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested width" do
        Width.stub(:find).with("37") { mock_width }
        mock_width.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :width => {'these' => 'params'}
      end

      it "assigns the requested width as @width" do
        Width.stub(:find) { mock_width(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:width).should be(mock_width)
      end

      it "redirects to the width" do
        Width.stub(:find) { mock_width(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(width_url(mock_width))
      end
    end

    describe "with invalid params" do
      it "assigns the width as @width" do
        Width.stub(:find) { mock_width(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:width).should be(mock_width)
      end

      it "re-renders the 'edit' template" do
        Width.stub(:find) { mock_width(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested width" do
      Width.stub(:find).with("37") { mock_width }
      mock_width.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the widths list" do
      Width.stub(:find) { mock_width }
      delete :destroy, :id => "1"
      response.should redirect_to(widths_url)
    end
  end

end
