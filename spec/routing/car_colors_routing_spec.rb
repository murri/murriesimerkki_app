require "spec_helper"

describe CarColorsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/car_colors" }.should route_to(:controller => "car_colors", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/car_colors/new" }.should route_to(:controller => "car_colors", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/car_colors/1" }.should route_to(:controller => "car_colors", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/car_colors/1/edit" }.should route_to(:controller => "car_colors", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/car_colors" }.should route_to(:controller => "car_colors", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/car_colors/1" }.should route_to(:controller => "car_colors", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/car_colors/1" }.should route_to(:controller => "car_colors", :action => "destroy", :id => "1")
    end

  end
end
