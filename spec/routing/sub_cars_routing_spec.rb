require "spec_helper"

describe SubCarsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/sub_cars" }.should route_to(:controller => "sub_cars", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/sub_cars/new" }.should route_to(:controller => "sub_cars", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/sub_cars/1" }.should route_to(:controller => "sub_cars", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/sub_cars/1/edit" }.should route_to(:controller => "sub_cars", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/sub_cars" }.should route_to(:controller => "sub_cars", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/sub_cars/1" }.should route_to(:controller => "sub_cars", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/sub_cars/1" }.should route_to(:controller => "sub_cars", :action => "destroy", :id => "1")
    end

  end
end
