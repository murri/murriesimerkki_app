require "spec_helper"

describe CarTopSpeedsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/car_top_speeds" }.should route_to(:controller => "car_top_speeds", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/car_top_speeds/new" }.should route_to(:controller => "car_top_speeds", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/car_top_speeds/1" }.should route_to(:controller => "car_top_speeds", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/car_top_speeds/1/edit" }.should route_to(:controller => "car_top_speeds", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/car_top_speeds" }.should route_to(:controller => "car_top_speeds", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/car_top_speeds/1" }.should route_to(:controller => "car_top_speeds", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/car_top_speeds/1" }.should route_to(:controller => "car_top_speeds", :action => "destroy", :id => "1")
    end

  end
end
