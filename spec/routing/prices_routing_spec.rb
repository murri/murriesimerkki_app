require "spec_helper"

describe PricesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/prices" }.should route_to(:controller => "prices", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/prices/new" }.should route_to(:controller => "prices", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/prices/1" }.should route_to(:controller => "prices", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/prices/1/edit" }.should route_to(:controller => "prices", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/prices" }.should route_to(:controller => "prices", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/prices/1" }.should route_to(:controller => "prices", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/prices/1" }.should route_to(:controller => "prices", :action => "destroy", :id => "1")
    end

  end
end
