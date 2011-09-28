require "spec_helper"

describe MotoColorTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/moto_color_types" }.should route_to(:controller => "moto_color_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/moto_color_types/new" }.should route_to(:controller => "moto_color_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/moto_color_types/1" }.should route_to(:controller => "moto_color_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/moto_color_types/1/edit" }.should route_to(:controller => "moto_color_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/moto_color_types" }.should route_to(:controller => "moto_color_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/moto_color_types/1" }.should route_to(:controller => "moto_color_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/moto_color_types/1" }.should route_to(:controller => "moto_color_types", :action => "destroy", :id => "1")
    end

  end
end
