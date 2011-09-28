require "spec_helper"

describe BoatColorsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_colors" }.should route_to(:controller => "boat_colors", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_colors/new" }.should route_to(:controller => "boat_colors", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_colors/1" }.should route_to(:controller => "boat_colors", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_colors/1/edit" }.should route_to(:controller => "boat_colors", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_colors" }.should route_to(:controller => "boat_colors", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_colors/1" }.should route_to(:controller => "boat_colors", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_colors/1" }.should route_to(:controller => "boat_colors", :action => "destroy", :id => "1")
    end

  end
end
