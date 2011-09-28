require "spec_helper"

describe BoatsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boats" }.should route_to(:controller => "boats", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boats/new" }.should route_to(:controller => "boats", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boats/1" }.should route_to(:controller => "boats", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boats/1/edit" }.should route_to(:controller => "boats", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boats" }.should route_to(:controller => "boats", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boats/1" }.should route_to(:controller => "boats", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boats/1" }.should route_to(:controller => "boats", :action => "destroy", :id => "1")
    end

  end
end
