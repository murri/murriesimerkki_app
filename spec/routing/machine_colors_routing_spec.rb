require "spec_helper"

describe MachineColorsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/machine_colors" }.should route_to(:controller => "machine_colors", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/machine_colors/new" }.should route_to(:controller => "machine_colors", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/machine_colors/1" }.should route_to(:controller => "machine_colors", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/machine_colors/1/edit" }.should route_to(:controller => "machine_colors", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/machine_colors" }.should route_to(:controller => "machine_colors", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/machine_colors/1" }.should route_to(:controller => "machine_colors", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/machine_colors/1" }.should route_to(:controller => "machine_colors", :action => "destroy", :id => "1")
    end

  end
end
