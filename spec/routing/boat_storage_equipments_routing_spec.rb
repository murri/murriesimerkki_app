require "spec_helper"

describe BoatStorageEquipmentsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_storage_equipments" }.should route_to(:controller => "boat_storage_equipments", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_storage_equipments/new" }.should route_to(:controller => "boat_storage_equipments", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_storage_equipments/1" }.should route_to(:controller => "boat_storage_equipments", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_storage_equipments/1/edit" }.should route_to(:controller => "boat_storage_equipments", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_storage_equipments" }.should route_to(:controller => "boat_storage_equipments", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_storage_equipments/1" }.should route_to(:controller => "boat_storage_equipments", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_storage_equipments/1" }.should route_to(:controller => "boat_storage_equipments", :action => "destroy", :id => "1")
    end

  end
end
