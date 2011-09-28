require "spec_helper"

describe EngineTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/engine_types" }.should route_to(:controller => "engine_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/engine_types/new" }.should route_to(:controller => "engine_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/engine_types/1" }.should route_to(:controller => "engine_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/engine_types/1/edit" }.should route_to(:controller => "engine_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/engine_types" }.should route_to(:controller => "engine_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/engine_types/1" }.should route_to(:controller => "engine_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/engine_types/1" }.should route_to(:controller => "engine_types", :action => "destroy", :id => "1")
    end

  end
end
