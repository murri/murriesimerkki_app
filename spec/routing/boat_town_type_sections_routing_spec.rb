require "spec_helper"

describe BoatTownTypeSectionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_town_type_sections" }.should route_to(:controller => "boat_town_type_sections", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_town_type_sections/new" }.should route_to(:controller => "boat_town_type_sections", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_town_type_sections/1" }.should route_to(:controller => "boat_town_type_sections", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_town_type_sections/1/edit" }.should route_to(:controller => "boat_town_type_sections", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_town_type_sections" }.should route_to(:controller => "boat_town_type_sections", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_town_type_sections/1" }.should route_to(:controller => "boat_town_type_sections", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_town_type_sections/1" }.should route_to(:controller => "boat_town_type_sections", :action => "destroy", :id => "1")
    end

  end
end
