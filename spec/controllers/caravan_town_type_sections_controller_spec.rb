require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CaravanTownTypeSectionsController do

  def mock_caravan_town_type_section(stubs={})
    @mock_caravan_town_type_section ||= mock_model(CaravanTownTypeSection, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all caravan_town_type_sections as @caravan_town_type_sections" do
      CaravanTownTypeSection.stub(:all) { [mock_caravan_town_type_section] }
      get :index
      assigns(:caravan_town_type_sections).should eq([mock_caravan_town_type_section])
    end
  end

  describe "GET show" do
    it "assigns the requested caravan_town_type_section as @caravan_town_type_section" do
      CaravanTownTypeSection.stub(:find).with("37") { mock_caravan_town_type_section }
      get :show, :id => "37"
      assigns(:caravan_town_type_section).should be(mock_caravan_town_type_section)
    end
  end

  describe "GET new" do
    it "assigns a new caravan_town_type_section as @caravan_town_type_section" do
      CaravanTownTypeSection.stub(:new) { mock_caravan_town_type_section }
      get :new
      assigns(:caravan_town_type_section).should be(mock_caravan_town_type_section)
    end
  end

  describe "GET edit" do
    it "assigns the requested caravan_town_type_section as @caravan_town_type_section" do
      CaravanTownTypeSection.stub(:find).with("37") { mock_caravan_town_type_section }
      get :edit, :id => "37"
      assigns(:caravan_town_type_section).should be(mock_caravan_town_type_section)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created caravan_town_type_section as @caravan_town_type_section" do
        CaravanTownTypeSection.stub(:new).with({'these' => 'params'}) { mock_caravan_town_type_section(:save => true) }
        post :create, :caravan_town_type_section => {'these' => 'params'}
        assigns(:caravan_town_type_section).should be(mock_caravan_town_type_section)
      end

      it "redirects to the created caravan_town_type_section" do
        CaravanTownTypeSection.stub(:new) { mock_caravan_town_type_section(:save => true) }
        post :create, :caravan_town_type_section => {}
        response.should redirect_to(caravan_town_type_section_url(mock_caravan_town_type_section))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved caravan_town_type_section as @caravan_town_type_section" do
        CaravanTownTypeSection.stub(:new).with({'these' => 'params'}) { mock_caravan_town_type_section(:save => false) }
        post :create, :caravan_town_type_section => {'these' => 'params'}
        assigns(:caravan_town_type_section).should be(mock_caravan_town_type_section)
      end

      it "re-renders the 'new' template" do
        CaravanTownTypeSection.stub(:new) { mock_caravan_town_type_section(:save => false) }
        post :create, :caravan_town_type_section => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested caravan_town_type_section" do
        CaravanTownTypeSection.stub(:find).with("37") { mock_caravan_town_type_section }
        mock_caravan_town_type_section.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :caravan_town_type_section => {'these' => 'params'}
      end

      it "assigns the requested caravan_town_type_section as @caravan_town_type_section" do
        CaravanTownTypeSection.stub(:find) { mock_caravan_town_type_section(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:caravan_town_type_section).should be(mock_caravan_town_type_section)
      end

      it "redirects to the caravan_town_type_section" do
        CaravanTownTypeSection.stub(:find) { mock_caravan_town_type_section(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(caravan_town_type_section_url(mock_caravan_town_type_section))
      end
    end

    describe "with invalid params" do
      it "assigns the caravan_town_type_section as @caravan_town_type_section" do
        CaravanTownTypeSection.stub(:find) { mock_caravan_town_type_section(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:caravan_town_type_section).should be(mock_caravan_town_type_section)
      end

      it "re-renders the 'edit' template" do
        CaravanTownTypeSection.stub(:find) { mock_caravan_town_type_section(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested caravan_town_type_section" do
      CaravanTownTypeSection.stub(:find).with("37") { mock_caravan_town_type_section }
      mock_caravan_town_type_section.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the caravan_town_type_sections list" do
      CaravanTownTypeSection.stub(:find) { mock_caravan_town_type_section }
      delete :destroy, :id => "1"
      response.should redirect_to(caravan_town_type_sections_url)
    end
  end

end
