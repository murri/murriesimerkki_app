require "spec_helper"

describe BoatEngineMakesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_engine_makes" }.should route_to(:controller => "boat_engine_makes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_engine_makes/new" }.should route_to(:controller => "boat_engine_makes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_engine_makes/1" }.should route_to(:controller => "boat_engine_makes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_engine_makes/1/edit" }.should route_to(:controller => "boat_engine_makes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_engine_makes" }.should route_to(:controller => "boat_engine_makes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_engine_makes/1" }.should route_to(:controller => "boat_engine_makes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_engine_makes/1" }.should route_to(:controller => "boat_engine_makes", :action => "destroy", :id => "1")
    end

  end
end
