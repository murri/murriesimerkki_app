require "spec_helper"

describe MotoPricesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/moto_prices" }.should route_to(:controller => "moto_prices", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/moto_prices/new" }.should route_to(:controller => "moto_prices", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/moto_prices/1" }.should route_to(:controller => "moto_prices", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/moto_prices/1/edit" }.should route_to(:controller => "moto_prices", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/moto_prices" }.should route_to(:controller => "moto_prices", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/moto_prices/1" }.should route_to(:controller => "moto_prices", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/moto_prices/1" }.should route_to(:controller => "moto_prices", :action => "destroy", :id => "1")
    end

  end
end
