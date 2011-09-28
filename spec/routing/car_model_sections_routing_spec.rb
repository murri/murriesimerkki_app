require "spec_helper"

describe CarModelSectionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/car_model_sections" }.should route_to(:controller => "car_model_sections", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/car_model_sections/new" }.should route_to(:controller => "car_model_sections", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/car_model_sections/1" }.should route_to(:controller => "car_model_sections", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/car_model_sections/1/edit" }.should route_to(:controller => "car_model_sections", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/car_model_sections" }.should route_to(:controller => "car_model_sections", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/car_model_sections/1" }.should route_to(:controller => "car_model_sections", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/car_model_sections/1" }.should route_to(:controller => "car_model_sections", :action => "destroy", :id => "1")
    end

  end
end
