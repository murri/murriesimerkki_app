require "spec_helper"

describe BoatSubTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_sub_types" }.should route_to(:controller => "boat_sub_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_sub_types/new" }.should route_to(:controller => "boat_sub_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_sub_types/1" }.should route_to(:controller => "boat_sub_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_sub_types/1/edit" }.should route_to(:controller => "boat_sub_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_sub_types" }.should route_to(:controller => "boat_sub_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_sub_types/1" }.should route_to(:controller => "boat_sub_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_sub_types/1" }.should route_to(:controller => "boat_sub_types", :action => "destroy", :id => "1")
    end

  end
end
