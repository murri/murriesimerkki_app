require "spec_helper"

describe YearModelsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/year_models" }.should route_to(:controller => "year_models", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/year_models/new" }.should route_to(:controller => "year_models", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/year_models/1" }.should route_to(:controller => "year_models", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/year_models/1/edit" }.should route_to(:controller => "year_models", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/year_models" }.should route_to(:controller => "year_models", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/year_models/1" }.should route_to(:controller => "year_models", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/year_models/1" }.should route_to(:controller => "year_models", :action => "destroy", :id => "1")
    end

  end
end
