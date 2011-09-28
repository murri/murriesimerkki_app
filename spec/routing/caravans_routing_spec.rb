require "spec_helper"

describe CaravansController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/caravans" }.should route_to(:controller => "caravans", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/caravans/new" }.should route_to(:controller => "caravans", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/caravans/1" }.should route_to(:controller => "caravans", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/caravans/1/edit" }.should route_to(:controller => "caravans", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/caravans" }.should route_to(:controller => "caravans", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/caravans/1" }.should route_to(:controller => "caravans", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/caravans/1" }.should route_to(:controller => "caravans", :action => "destroy", :id => "1")
    end

  end
end
