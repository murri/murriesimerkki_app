require "spec_helper"

describe BoatMakesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_makes" }.should route_to(:controller => "boat_makes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_makes/new" }.should route_to(:controller => "boat_makes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_makes/1" }.should route_to(:controller => "boat_makes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_makes/1/edit" }.should route_to(:controller => "boat_makes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_makes" }.should route_to(:controller => "boat_makes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_makes/1" }.should route_to(:controller => "boat_makes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_makes/1" }.should route_to(:controller => "boat_makes", :action => "destroy", :id => "1")
    end

  end
end
