require "spec_helper"

describe BoatTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_types" }.should route_to(:controller => "boat_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_types/new" }.should route_to(:controller => "boat_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_types/1" }.should route_to(:controller => "boat_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_types/1/edit" }.should route_to(:controller => "boat_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_types" }.should route_to(:controller => "boat_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_types/1" }.should route_to(:controller => "boat_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_types/1" }.should route_to(:controller => "boat_types", :action => "destroy", :id => "1")
    end

  end
end
