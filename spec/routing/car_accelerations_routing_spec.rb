require "spec_helper"

describe CarAccelerationsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/car_accelerations" }.should route_to(:controller => "car_accelerations", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/car_accelerations/new" }.should route_to(:controller => "car_accelerations", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/car_accelerations/1" }.should route_to(:controller => "car_accelerations", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/car_accelerations/1/edit" }.should route_to(:controller => "car_accelerations", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/car_accelerations" }.should route_to(:controller => "car_accelerations", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/car_accelerations/1" }.should route_to(:controller => "car_accelerations", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/car_accelerations/1" }.should route_to(:controller => "car_accelerations", :action => "destroy", :id => "1")
    end

  end
end
