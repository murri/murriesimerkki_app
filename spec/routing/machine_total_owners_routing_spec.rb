require "spec_helper"

describe MachineTotalOwnersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/machine_total_owners" }.should route_to(:controller => "machine_total_owners", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/machine_total_owners/new" }.should route_to(:controller => "machine_total_owners", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/machine_total_owners/1" }.should route_to(:controller => "machine_total_owners", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/machine_total_owners/1/edit" }.should route_to(:controller => "machine_total_owners", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/machine_total_owners" }.should route_to(:controller => "machine_total_owners", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/machine_total_owners/1" }.should route_to(:controller => "machine_total_owners", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/machine_total_owners/1" }.should route_to(:controller => "machine_total_owners", :action => "destroy", :id => "1")
    end

  end
end
