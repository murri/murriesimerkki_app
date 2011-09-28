require "spec_helper"

describe CaravanLenghtsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/caravan_lenghts" }.should route_to(:controller => "caravan_lenghts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/caravan_lenghts/new" }.should route_to(:controller => "caravan_lenghts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/caravan_lenghts/1" }.should route_to(:controller => "caravan_lenghts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/caravan_lenghts/1/edit" }.should route_to(:controller => "caravan_lenghts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/caravan_lenghts" }.should route_to(:controller => "caravan_lenghts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/caravan_lenghts/1" }.should route_to(:controller => "caravan_lenghts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/caravan_lenghts/1" }.should route_to(:controller => "caravan_lenghts", :action => "destroy", :id => "1")
    end

  end
end
