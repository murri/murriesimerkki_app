require "spec_helper"

describe CaravanMileagesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/caravan_mileages" }.should route_to(:controller => "caravan_mileages", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/caravan_mileages/new" }.should route_to(:controller => "caravan_mileages", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/caravan_mileages/1" }.should route_to(:controller => "caravan_mileages", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/caravan_mileages/1/edit" }.should route_to(:controller => "caravan_mileages", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/caravan_mileages" }.should route_to(:controller => "caravan_mileages", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/caravan_mileages/1" }.should route_to(:controller => "caravan_mileages", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/caravan_mileages/1" }.should route_to(:controller => "caravan_mileages", :action => "destroy", :id => "1")
    end

  end
end
