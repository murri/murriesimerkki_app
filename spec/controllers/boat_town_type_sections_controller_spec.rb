require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe BoatTownTypeSectionsController do

  def mock_boat_town_type_section(stubs={})
    @mock_boat_town_type_section ||= mock_model(BoatTownTypeSection, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all boat_town_type_sections as @boat_town_type_sections" do
      BoatTownTypeSection.stub(:all) { [mock_boat_town_type_section] }
      get :index
      assigns(:boat_town_type_sections).should eq([mock_boat_town_type_section])
    end
  end

  describe "GET show" do
    it "assigns the requested boat_town_type_section as @boat_town_type_section" do
      BoatTownTypeSection.stub(:find).with("37") { mock_boat_town_type_section }
      get :show, :id => "37"
      assigns(:boat_town_type_section).should be(mock_boat_town_type_section)
    end
  end

  describe "GET new" do
    it "assigns a new boat_town_type_section as @boat_town_type_section" do
      BoatTownTypeSection.stub(:new) { mock_boat_town_type_section }
      get :new
      assigns(:boat_town_type_section).should be(mock_boat_town_type_section)
    end
  end

  describe "GET edit" do
    it "assigns the requested boat_town_type_section as @boat_town_type_section" do
      BoatTownTypeSection.stub(:find).with("37") { mock_boat_town_type_section }
      get :edit, :id => "37"
      assigns(:boat_town_type_section).should be(mock_boat_town_type_section)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created boat_town_type_section as @boat_town_type_section" do
        BoatTownTypeSection.stub(:new).with({'these' => 'params'}) { mock_boat_town_type_section(:save => true) }
        post :create, :boat_town_type_section => {'these' => 'params'}
        assigns(:boat_town_type_section).should be(mock_boat_town_type_section)
      end

      it "redirects to the created boat_town_type_section" do
        BoatTownTypeSection.stub(:new) { mock_boat_town_type_section(:save => true) }
        post :create, :boat_town_type_section => {}
        response.should redirect_to(boat_town_type_section_url(mock_boat_town_type_section))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved boat_town_type_section as @boat_town_type_section" do
        BoatTownTypeSection.stub(:new).with({'these' => 'params'}) { mock_boat_town_type_section(:save => false) }
        post :create, :boat_town_type_section => {'these' => 'params'}
        assigns(:boat_town_type_section).should be(mock_boat_town_type_section)
      end

      it "re-renders the 'new' template" do
        BoatTownTypeSection.stub(:new) { mock_boat_town_type_section(:save => false) }
        post :create, :boat_town_type_section => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested boat_town_type_section" do
        BoatTownTypeSection.stub(:find).with("37") { mock_boat_town_type_section }
        mock_boat_town_type_section.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :boat_town_type_section => {'these' => 'params'}
      end

      it "assigns the requested boat_town_type_section as @boat_town_type_section" do
        BoatTownTypeSection.stub(:find) { mock_boat_town_type_section(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:boat_town_type_section).should be(mock_boat_town_type_section)
      end

      it "redirects to the boat_town_type_section" do
        BoatTownTypeSection.stub(:find) { mock_boat_town_type_section(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(boat_town_type_section_url(mock_boat_town_type_section))
      end
    end

    describe "with invalid params" do
      it "assigns the boat_town_type_section as @boat_town_type_section" do
        BoatTownTypeSection.stub(:find) { mock_boat_town_type_section(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:boat_town_type_section).should be(mock_boat_town_type_section)
      end

      it "re-renders the 'edit' template" do
        BoatTownTypeSection.stub(:find) { mock_boat_town_type_section(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested boat_town_type_section" do
      BoatTownTypeSection.stub(:find).with("37") { mock_boat_town_type_section }
      mock_boat_town_type_section.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the boat_town_type_sections list" do
      BoatTownTypeSection.stub(:find) { mock_boat_town_type_section }
      delete :destroy, :id => "1"
      response.should redirect_to(boat_town_type_sections_url)
    end
  end

end
