require "spec_helper"

describe WeightsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/weights" }.should route_to(:controller => "weights", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/weights/new" }.should route_to(:controller => "weights", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/weights/1" }.should route_to(:controller => "weights", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/weights/1/edit" }.should route_to(:controller => "weights", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/weights" }.should route_to(:controller => "weights", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/weights/1" }.should route_to(:controller => "weights", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/weights/1" }.should route_to(:controller => "weights", :action => "destroy", :id => "1")
    end

  end
end
