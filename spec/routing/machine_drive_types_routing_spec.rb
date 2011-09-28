require "spec_helper"

describe MachineDriveTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/machine_drive_types" }.should route_to(:controller => "machine_drive_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/machine_drive_types/new" }.should route_to(:controller => "machine_drive_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/machine_drive_types/1" }.should route_to(:controller => "machine_drive_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/machine_drive_types/1/edit" }.should route_to(:controller => "machine_drive_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/machine_drive_types" }.should route_to(:controller => "machine_drive_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/machine_drive_types/1" }.should route_to(:controller => "machine_drive_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/machine_drive_types/1" }.should route_to(:controller => "machine_drive_types", :action => "destroy", :id => "1")
    end

  end
end
