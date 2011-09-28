require "spec_helper"

describe MachineEngineSizesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/machine_engine_sizes" }.should route_to(:controller => "machine_engine_sizes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/machine_engine_sizes/new" }.should route_to(:controller => "machine_engine_sizes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/machine_engine_sizes/1" }.should route_to(:controller => "machine_engine_sizes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/machine_engine_sizes/1/edit" }.should route_to(:controller => "machine_engine_sizes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/machine_engine_sizes" }.should route_to(:controller => "machine_engine_sizes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/machine_engine_sizes/1" }.should route_to(:controller => "machine_engine_sizes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/machine_engine_sizes/1" }.should route_to(:controller => "machine_engine_sizes", :action => "destroy", :id => "1")
    end

  end
end
