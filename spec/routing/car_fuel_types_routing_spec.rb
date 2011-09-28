require "spec_helper"

describe CarFuelTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/car_fuel_types" }.should route_to(:controller => "car_fuel_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/car_fuel_types/new" }.should route_to(:controller => "car_fuel_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/car_fuel_types/1" }.should route_to(:controller => "car_fuel_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/car_fuel_types/1/edit" }.should route_to(:controller => "car_fuel_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/car_fuel_types" }.should route_to(:controller => "car_fuel_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/car_fuel_types/1" }.should route_to(:controller => "car_fuel_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/car_fuel_types/1" }.should route_to(:controller => "car_fuel_types", :action => "destroy", :id => "1")
    end

  end
end