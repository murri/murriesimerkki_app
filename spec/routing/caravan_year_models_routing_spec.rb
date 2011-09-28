require "spec_helper"

describe CaravanYearModelsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/caravan_year_models" }.should route_to(:controller => "caravan_year_models", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/caravan_year_models/new" }.should route_to(:controller => "caravan_year_models", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/caravan_year_models/1" }.should route_to(:controller => "caravan_year_models", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/caravan_year_models/1/edit" }.should route_to(:controller => "caravan_year_models", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/caravan_year_models" }.should route_to(:controller => "caravan_year_models", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/caravan_year_models/1" }.should route_to(:controller => "caravan_year_models", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/caravan_year_models/1" }.should route_to(:controller => "caravan_year_models", :action => "destroy", :id => "1")
    end

  end
end
