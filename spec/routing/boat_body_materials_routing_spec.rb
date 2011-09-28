require "spec_helper"

describe BoatBodyMaterialsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_body_materials" }.should route_to(:controller => "boat_body_materials", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_body_materials/new" }.should route_to(:controller => "boat_body_materials", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_body_materials/1" }.should route_to(:controller => "boat_body_materials", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_body_materials/1/edit" }.should route_to(:controller => "boat_body_materials", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_body_materials" }.should route_to(:controller => "boat_body_materials", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_body_materials/1" }.should route_to(:controller => "boat_body_materials", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_body_materials/1" }.should route_to(:controller => "boat_body_materials", :action => "destroy", :id => "1")
    end

  end
end
