require "spec_helper"

describe BoatDraughtsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_draughts" }.should route_to(:controller => "boat_draughts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_draughts/new" }.should route_to(:controller => "boat_draughts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_draughts/1" }.should route_to(:controller => "boat_draughts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_draughts/1/edit" }.should route_to(:controller => "boat_draughts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_draughts" }.should route_to(:controller => "boat_draughts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_draughts/1" }.should route_to(:controller => "boat_draughts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_draughts/1" }.should route_to(:controller => "boat_draughts", :action => "destroy", :id => "1")
    end

  end
end
