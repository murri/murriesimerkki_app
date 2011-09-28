require "spec_helper"

describe BoatsDomicileTypeSectionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boats_domicile_type_sections" }.should route_to(:controller => "boats_domicile_type_sections", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boats_domicile_type_sections/new" }.should route_to(:controller => "boats_domicile_type_sections", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boats_domicile_type_sections/1" }.should route_to(:controller => "boats_domicile_type_sections", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boats_domicile_type_sections/1/edit" }.should route_to(:controller => "boats_domicile_type_sections", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boats_domicile_type_sections" }.should route_to(:controller => "boats_domicile_type_sections", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boats_domicile_type_sections/1" }.should route_to(:controller => "boats_domicile_type_sections", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boats_domicile_type_sections/1" }.should route_to(:controller => "boats_domicile_type_sections", :action => "destroy", :id => "1")
    end

  end
end
