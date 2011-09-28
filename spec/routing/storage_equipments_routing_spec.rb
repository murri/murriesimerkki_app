require "spec_helper"

describe StorageEquipmentsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/storage_equipments" }.should route_to(:controller => "storage_equipments", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/storage_equipments/new" }.should route_to(:controller => "storage_equipments", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/storage_equipments/1" }.should route_to(:controller => "storage_equipments", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/storage_equipments/1/edit" }.should route_to(:controller => "storage_equipments", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/storage_equipments" }.should route_to(:controller => "storage_equipments", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/storage_equipments/1" }.should route_to(:controller => "storage_equipments", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/storage_equipments/1" }.should route_to(:controller => "storage_equipments", :action => "destroy", :id => "1")
    end

  end
end
