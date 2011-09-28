require "spec_helper"

describe HeightsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/heights" }.should route_to(:controller => "heights", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/heights/new" }.should route_to(:controller => "heights", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/heights/1" }.should route_to(:controller => "heights", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/heights/1/edit" }.should route_to(:controller => "heights", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/heights" }.should route_to(:controller => "heights", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/heights/1" }.should route_to(:controller => "heights", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/heights/1" }.should route_to(:controller => "heights", :action => "destroy", :id => "1")
    end

  end
end
