require "spec_helper"

describe MotoMakesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/moto_makes" }.should route_to(:controller => "moto_makes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/moto_makes/new" }.should route_to(:controller => "moto_makes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/moto_makes/1" }.should route_to(:controller => "moto_makes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/moto_makes/1/edit" }.should route_to(:controller => "moto_makes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/moto_makes" }.should route_to(:controller => "moto_makes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/moto_makes/1" }.should route_to(:controller => "moto_makes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/moto_makes/1" }.should route_to(:controller => "moto_makes", :action => "destroy", :id => "1")
    end

  end
end
