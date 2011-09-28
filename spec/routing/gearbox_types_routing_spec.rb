require "spec_helper"

describe GearboxTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/gearbox_types" }.should route_to(:controller => "gearbox_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/gearbox_types/new" }.should route_to(:controller => "gearbox_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/gearbox_types/1" }.should route_to(:controller => "gearbox_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/gearbox_types/1/edit" }.should route_to(:controller => "gearbox_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/gearbox_types" }.should route_to(:controller => "gearbox_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/gearbox_types/1" }.should route_to(:controller => "gearbox_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/gearbox_types/1" }.should route_to(:controller => "gearbox_types", :action => "destroy", :id => "1")
    end

  end
end
