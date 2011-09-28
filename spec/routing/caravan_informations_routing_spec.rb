require "spec_helper"

describe CaravanInformationsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/caravan_informations" }.should route_to(:controller => "caravan_informations", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/caravan_informations/new" }.should route_to(:controller => "caravan_informations", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/caravan_informations/1" }.should route_to(:controller => "caravan_informations", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/caravan_informations/1/edit" }.should route_to(:controller => "caravan_informations", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/caravan_informations" }.should route_to(:controller => "caravan_informations", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/caravan_informations/1" }.should route_to(:controller => "caravan_informations", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/caravan_informations/1" }.should route_to(:controller => "caravan_informations", :action => "destroy", :id => "1")
    end

  end
end
