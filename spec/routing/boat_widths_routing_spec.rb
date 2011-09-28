require "spec_helper"

describe BoatWidthsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_widths" }.should route_to(:controller => "boat_widths", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_widths/new" }.should route_to(:controller => "boat_widths", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_widths/1" }.should route_to(:controller => "boat_widths", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_widths/1/edit" }.should route_to(:controller => "boat_widths", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_widths" }.should route_to(:controller => "boat_widths", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_widths/1" }.should route_to(:controller => "boat_widths", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_widths/1" }.should route_to(:controller => "boat_widths", :action => "destroy", :id => "1")
    end

  end
end
