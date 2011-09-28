require "spec_helper"

describe CarEmissionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/car_emissions" }.should route_to(:controller => "car_emissions", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/car_emissions/new" }.should route_to(:controller => "car_emissions", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/car_emissions/1" }.should route_to(:controller => "car_emissions", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/car_emissions/1/edit" }.should route_to(:controller => "car_emissions", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/car_emissions" }.should route_to(:controller => "car_emissions", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/car_emissions/1" }.should route_to(:controller => "car_emissions", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/car_emissions/1" }.should route_to(:controller => "car_emissions", :action => "destroy", :id => "1")
    end

  end
end
