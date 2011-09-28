require "spec_helper"

describe VehicleClassesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/vehicle_classes" }.should route_to(:controller => "vehicle_classes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/vehicle_classes/new" }.should route_to(:controller => "vehicle_classes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/vehicle_classes/1" }.should route_to(:controller => "vehicle_classes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/vehicle_classes/1/edit" }.should route_to(:controller => "vehicle_classes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/vehicle_classes" }.should route_to(:controller => "vehicle_classes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/vehicle_classes/1" }.should route_to(:controller => "vehicle_classes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/vehicle_classes/1" }.should route_to(:controller => "vehicle_classes", :action => "destroy", :id => "1")
    end

  end
end
