require "spec_helper"

describe MachineModelsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/machine_models" }.should route_to(:controller => "machine_models", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/machine_models/new" }.should route_to(:controller => "machine_models", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/machine_models/1" }.should route_to(:controller => "machine_models", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/machine_models/1/edit" }.should route_to(:controller => "machine_models", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/machine_models" }.should route_to(:controller => "machine_models", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/machine_models/1" }.should route_to(:controller => "machine_models", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/machine_models/1" }.should route_to(:controller => "machine_models", :action => "destroy", :id => "1")
    end

  end
end
