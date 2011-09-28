require "spec_helper"

describe BoatMakeSectionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_make_sections" }.should route_to(:controller => "boat_make_sections", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_make_sections/new" }.should route_to(:controller => "boat_make_sections", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_make_sections/1" }.should route_to(:controller => "boat_make_sections", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_make_sections/1/edit" }.should route_to(:controller => "boat_make_sections", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_make_sections" }.should route_to(:controller => "boat_make_sections", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_make_sections/1" }.should route_to(:controller => "boat_make_sections", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_make_sections/1" }.should route_to(:controller => "boat_make_sections", :action => "destroy", :id => "1")
    end

  end
end
