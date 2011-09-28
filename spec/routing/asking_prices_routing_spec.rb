require "spec_helper"

describe AskingPricesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/asking_prices" }.should route_to(:controller => "asking_prices", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/asking_prices/new" }.should route_to(:controller => "asking_prices", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/asking_prices/1" }.should route_to(:controller => "asking_prices", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/asking_prices/1/edit" }.should route_to(:controller => "asking_prices", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/asking_prices" }.should route_to(:controller => "asking_prices", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/asking_prices/1" }.should route_to(:controller => "asking_prices", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/asking_prices/1" }.should route_to(:controller => "asking_prices", :action => "destroy", :id => "1")
    end

  end
end
