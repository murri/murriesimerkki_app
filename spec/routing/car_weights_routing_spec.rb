require "spec_helper"

describe CarWeightsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/car_weights" }.should route_to(:controller => "car_weights", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/car_weights/new" }.should route_to(:controller => "car_weights", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/car_weights/1" }.should route_to(:controller => "car_weights", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/car_weights/1/edit" }.should route_to(:controller => "car_weights", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/car_weights" }.should route_to(:controller => "car_weights", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/car_weights/1" }.should route_to(:controller => "car_weights", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/car_weights/1" }.should route_to(:controller => "car_weights", :action => "destroy", :id => "1")
    end

  end
end
