require "spec_helper"

describe SubVehiclesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/sub_vehicles" }.should route_to(:controller => "sub_vehicles", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/sub_vehicles/new" }.should route_to(:controller => "sub_vehicles", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/sub_vehicles/1" }.should route_to(:controller => "sub_vehicles", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/sub_vehicles/1/edit" }.should route_to(:controller => "sub_vehicles", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/sub_vehicles" }.should route_to(:controller => "sub_vehicles", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/sub_vehicles/1" }.should route_to(:controller => "sub_vehicles", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/sub_vehicles/1" }.should route_to(:controller => "sub_vehicles", :action => "destroy", :id => "1")
    end

  end
end
