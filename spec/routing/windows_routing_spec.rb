require "spec_helper"

describe WindowsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/windows" }.should route_to(:controller => "windows", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/windows/new" }.should route_to(:controller => "windows", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/windows/1" }.should route_to(:controller => "windows", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/windows/1/edit" }.should route_to(:controller => "windows", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/windows" }.should route_to(:controller => "windows", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/windows/1" }.should route_to(:controller => "windows", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/windows/1" }.should route_to(:controller => "windows", :action => "destroy", :id => "1")
    end

  end
end
