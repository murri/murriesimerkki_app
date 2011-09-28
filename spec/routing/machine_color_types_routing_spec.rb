require "spec_helper"

describe MachineColorTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/machine_color_types" }.should route_to(:controller => "machine_color_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/machine_color_types/new" }.should route_to(:controller => "machine_color_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/machine_color_types/1" }.should route_to(:controller => "machine_color_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/machine_color_types/1/edit" }.should route_to(:controller => "machine_color_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/machine_color_types" }.should route_to(:controller => "machine_color_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/machine_color_types/1" }.should route_to(:controller => "machine_color_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/machine_color_types/1" }.should route_to(:controller => "machine_color_types", :action => "destroy", :id => "1")
    end

  end
end
