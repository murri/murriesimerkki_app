require "spec_helper"

describe CaravanGrossWeightsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/caravan_gross_weights" }.should route_to(:controller => "caravan_gross_weights", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/caravan_gross_weights/new" }.should route_to(:controller => "caravan_gross_weights", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/caravan_gross_weights/1" }.should route_to(:controller => "caravan_gross_weights", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/caravan_gross_weights/1/edit" }.should route_to(:controller => "caravan_gross_weights", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/caravan_gross_weights" }.should route_to(:controller => "caravan_gross_weights", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/caravan_gross_weights/1" }.should route_to(:controller => "caravan_gross_weights", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/caravan_gross_weights/1" }.should route_to(:controller => "caravan_gross_weights", :action => "destroy", :id => "1")
    end

  end
end
