require "spec_helper"

describe CarMileagesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/car_mileages" }.should route_to(:controller => "car_mileages", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/car_mileages/new" }.should route_to(:controller => "car_mileages", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/car_mileages/1" }.should route_to(:controller => "car_mileages", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/car_mileages/1/edit" }.should route_to(:controller => "car_mileages", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/car_mileages" }.should route_to(:controller => "car_mileages", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/car_mileages/1" }.should route_to(:controller => "car_mileages", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/car_mileages/1" }.should route_to(:controller => "car_mileages", :action => "destroy", :id => "1")
    end

  end
end
