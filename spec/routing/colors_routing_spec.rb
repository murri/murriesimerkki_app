require "spec_helper"

describe ColorsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/colors" }.should route_to(:controller => "colors", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/colors/new" }.should route_to(:controller => "colors", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/colors/1" }.should route_to(:controller => "colors", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/colors/1/edit" }.should route_to(:controller => "colors", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/colors" }.should route_to(:controller => "colors", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/colors/1" }.should route_to(:controller => "colors", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/colors/1" }.should route_to(:controller => "colors", :action => "destroy", :id => "1")
    end

  end
end
