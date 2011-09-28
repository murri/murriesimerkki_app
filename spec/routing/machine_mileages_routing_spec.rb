require "spec_helper"

describe MachineMileagesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/machine_mileages" }.should route_to(:controller => "machine_mileages", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/machine_mileages/new" }.should route_to(:controller => "machine_mileages", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/machine_mileages/1" }.should route_to(:controller => "machine_mileages", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/machine_mileages/1/edit" }.should route_to(:controller => "machine_mileages", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/machine_mileages" }.should route_to(:controller => "machine_mileages", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/machine_mileages/1" }.should route_to(:controller => "machine_mileages", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/machine_mileages/1" }.should route_to(:controller => "machine_mileages", :action => "destroy", :id => "1")
    end

  end
end
