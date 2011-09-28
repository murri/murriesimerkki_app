require "spec_helper"

describe CarPowersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/car_powers" }.should route_to(:controller => "car_powers", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/car_powers/new" }.should route_to(:controller => "car_powers", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/car_powers/1" }.should route_to(:controller => "car_powers", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/car_powers/1/edit" }.should route_to(:controller => "car_powers", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/car_powers" }.should route_to(:controller => "car_powers", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/car_powers/1" }.should route_to(:controller => "car_powers", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/car_powers/1" }.should route_to(:controller => "car_powers", :action => "destroy", :id => "1")
    end

  end
end
