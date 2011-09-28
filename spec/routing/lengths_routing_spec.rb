require "spec_helper"

describe LengthsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/lengths" }.should route_to(:controller => "lengths", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/lengths/new" }.should route_to(:controller => "lengths", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/lengths/1" }.should route_to(:controller => "lengths", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/lengths/1/edit" }.should route_to(:controller => "lengths", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/lengths" }.should route_to(:controller => "lengths", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/lengths/1" }.should route_to(:controller => "lengths", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/lengths/1" }.should route_to(:controller => "lengths", :action => "destroy", :id => "1")
    end

  end
end
