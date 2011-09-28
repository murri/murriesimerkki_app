require "spec_helper"

describe ModelSectionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/model_sections" }.should route_to(:controller => "model_sections", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/model_sections/new" }.should route_to(:controller => "model_sections", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/model_sections/1" }.should route_to(:controller => "model_sections", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/model_sections/1/edit" }.should route_to(:controller => "model_sections", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/model_sections" }.should route_to(:controller => "model_sections", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/model_sections/1" }.should route_to(:controller => "model_sections", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/model_sections/1" }.should route_to(:controller => "model_sections", :action => "destroy", :id => "1")
    end

  end
end
