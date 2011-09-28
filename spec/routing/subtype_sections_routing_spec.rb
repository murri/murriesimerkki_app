require "spec_helper"

describe SubtypeSectionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/subtype_sections" }.should route_to(:controller => "subtype_sections", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/subtype_sections/new" }.should route_to(:controller => "subtype_sections", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/subtype_sections/1" }.should route_to(:controller => "subtype_sections", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/subtype_sections/1/edit" }.should route_to(:controller => "subtype_sections", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/subtype_sections" }.should route_to(:controller => "subtype_sections", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/subtype_sections/1" }.should route_to(:controller => "subtype_sections", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/subtype_sections/1" }.should route_to(:controller => "subtype_sections", :action => "destroy", :id => "1")
    end

  end
end
