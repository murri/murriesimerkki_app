require "spec_helper"

describe BoatHeightsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_heights" }.should route_to(:controller => "boat_heights", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_heights/new" }.should route_to(:controller => "boat_heights", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_heights/1" }.should route_to(:controller => "boat_heights", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_heights/1/edit" }.should route_to(:controller => "boat_heights", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_heights" }.should route_to(:controller => "boat_heights", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_heights/1" }.should route_to(:controller => "boat_heights", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_heights/1" }.should route_to(:controller => "boat_heights", :action => "destroy", :id => "1")
    end

  end
end
