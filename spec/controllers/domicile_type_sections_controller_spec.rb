require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe DomicileTypeSectionsController do

  def mock_domicile_type_section(stubs={})
    @mock_domicile_type_section ||= mock_model(DomicileTypeSection, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all domicile_type_sections as @domicile_type_sections" do
      DomicileTypeSection.stub(:all) { [mock_domicile_type_section] }
      get :index
      assigns(:domicile_type_sections).should eq([mock_domicile_type_section])
    end
  end

  describe "GET show" do
    it "assigns the requested domicile_type_section as @domicile_type_section" do
      DomicileTypeSection.stub(:find).with("37") { mock_domicile_type_section }
      get :show, :id => "37"
      assigns(:domicile_type_section).should be(mock_domicile_type_section)
    end
  end

  describe "GET new" do
    it "assigns a new domicile_type_section as @domicile_type_section" do
      DomicileTypeSection.stub(:new) { mock_domicile_type_section }
      get :new
      assigns(:domicile_type_section).should be(mock_domicile_type_section)
    end
  end

  describe "GET edit" do
    it "assigns the requested domicile_type_section as @domicile_type_section" do
      DomicileTypeSection.stub(:find).with("37") { mock_domicile_type_section }
      get :edit, :id => "37"
      assigns(:domicile_type_section).should be(mock_domicile_type_section)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created domicile_type_section as @domicile_type_section" do
        DomicileTypeSection.stub(:new).with({'these' => 'params'}) { mock_domicile_type_section(:save => true) }
        post :create, :domicile_type_section => {'these' => 'params'}
        assigns(:domicile_type_section).should be(mock_domicile_type_section)
      end

      it "redirects to the created domicile_type_section" do
        DomicileTypeSection.stub(:new) { mock_domicile_type_section(:save => true) }
        post :create, :domicile_type_section => {}
        response.should redirect_to(domicile_type_section_url(mock_domicile_type_section))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved domicile_type_section as @domicile_type_section" do
        DomicileTypeSection.stub(:new).with({'these' => 'params'}) { mock_domicile_type_section(:save => false) }
        post :create, :domicile_type_section => {'these' => 'params'}
        assigns(:domicile_type_section).should be(mock_domicile_type_section)
      end

      it "re-renders the 'new' template" do
        DomicileTypeSection.stub(:new) { mock_domicile_type_section(:save => false) }
        post :create, :domicile_type_section => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested domicile_type_section" do
        DomicileTypeSection.stub(:find).with("37") { mock_domicile_type_section }
        mock_domicile_type_section.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :domicile_type_section => {'these' => 'params'}
      end

      it "assigns the requested domicile_type_section as @domicile_type_section" do
        DomicileTypeSection.stub(:find) { mock_domicile_type_section(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:domicile_type_section).should be(mock_domicile_type_section)
      end

      it "redirects to the domicile_type_section" do
        DomicileTypeSection.stub(:find) { mock_domicile_type_section(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(domicile_type_section_url(mock_domicile_type_section))
      end
    end

    describe "with invalid params" do
      it "assigns the domicile_type_section as @domicile_type_section" do
        DomicileTypeSection.stub(:find) { mock_domicile_type_section(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:domicile_type_section).should be(mock_domicile_type_section)
      end

      it "re-renders the 'edit' template" do
        DomicileTypeSection.stub(:find) { mock_domicile_type_section(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested domicile_type_section" do
      DomicileTypeSection.stub(:find).with("37") { mock_domicile_type_section }
      mock_domicile_type_section.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the domicile_type_sections list" do
      DomicileTypeSection.stub(:find) { mock_domicile_type_section }
      delete :destroy, :id => "1"
      response.should redirect_to(domicile_type_sections_url)
    end
  end

end