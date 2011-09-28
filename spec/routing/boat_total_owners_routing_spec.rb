require "spec_helper"

describe BoatTotalOwnersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_total_owners" }.should route_to(:controller => "boat_total_owners", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_total_owners/new" }.should route_to(:controller => "boat_total_owners", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_total_owners/1" }.should route_to(:controller => "boat_total_owners", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_total_owners/1/edit" }.should route_to(:controller => "boat_total_owners", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_total_owners" }.should route_to(:controller => "boat_total_owners", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_total_owners/1" }.should route_to(:controller => "boat_total_owners", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_total_owners/1" }.should route_to(:controller => "boat_total_owners", :action => "destroy", :id => "1")
    end

  end
end
