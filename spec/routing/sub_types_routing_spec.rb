require "spec_helper"

describe SubTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/sub_types" }.should route_to(:controller => "sub_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/sub_types/new" }.should route_to(:controller => "sub_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/sub_types/1" }.should route_to(:controller => "sub_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/sub_types/1/edit" }.should route_to(:controller => "sub_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/sub_types" }.should route_to(:controller => "sub_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/sub_types/1" }.should route_to(:controller => "sub_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/sub_types/1" }.should route_to(:controller => "sub_types", :action => "destroy", :id => "1")
    end

  end
end
