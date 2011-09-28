require "spec_helper"

describe BoatsPositionTownTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boats_position_town_types" }.should route_to(:controller => "boats_position_town_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boats_position_town_types/new" }.should route_to(:controller => "boats_position_town_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boats_position_town_types/1" }.should route_to(:controller => "boats_position_town_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boats_position_town_types/1/edit" }.should route_to(:controller => "boats_position_town_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boats_position_town_types" }.should route_to(:controller => "boats_position_town_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boats_position_town_types/1" }.should route_to(:controller => "boats_position_town_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boats_position_town_types/1" }.should route_to(:controller => "boats_position_town_types", :action => "destroy", :id => "1")
    end

  end
end
