require "spec_helper"

describe CarPricesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/car_prices" }.should route_to(:controller => "car_prices", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/car_prices/new" }.should route_to(:controller => "car_prices", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/car_prices/1" }.should route_to(:controller => "car_prices", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/car_prices/1/edit" }.should route_to(:controller => "car_prices", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/car_prices" }.should route_to(:controller => "car_prices", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/car_prices/1" }.should route_to(:controller => "car_prices", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/car_prices/1" }.should route_to(:controller => "car_prices", :action => "destroy", :id => "1")
    end

  end
end
