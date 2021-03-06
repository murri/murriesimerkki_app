require "spec_helper"

describe BoatWeightsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_weights" }.should route_to(:controller => "boat_weights", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_weights/new" }.should route_to(:controller => "boat_weights", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_weights/1" }.should route_to(:controller => "boat_weights", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_weights/1/edit" }.should route_to(:controller => "boat_weights", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_weights" }.should route_to(:controller => "boat_weights", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_weights/1" }.should route_to(:controller => "boat_weights", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_weights/1" }.should route_to(:controller => "boat_weights", :action => "destroy", :id => "1")
    end

  end
end
