require "spec_helper"

describe CaravanAskingPricesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/caravan_asking_prices" }.should route_to(:controller => "caravan_asking_prices", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/caravan_asking_prices/new" }.should route_to(:controller => "caravan_asking_prices", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/caravan_asking_prices/1" }.should route_to(:controller => "caravan_asking_prices", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/caravan_asking_prices/1/edit" }.should route_to(:controller => "caravan_asking_prices", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/caravan_asking_prices" }.should route_to(:controller => "caravan_asking_prices", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/caravan_asking_prices/1" }.should route_to(:controller => "caravan_asking_prices", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/caravan_asking_prices/1" }.should route_to(:controller => "caravan_asking_prices", :action => "destroy", :id => "1")
    end

  end
end
