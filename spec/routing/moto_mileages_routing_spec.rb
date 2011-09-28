require "spec_helper"

describe MotoMileagesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/moto_mileages" }.should route_to(:controller => "moto_mileages", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/moto_mileages/new" }.should route_to(:controller => "moto_mileages", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/moto_mileages/1" }.should route_to(:controller => "moto_mileages", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/moto_mileages/1/edit" }.should route_to(:controller => "moto_mileages", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/moto_mileages" }.should route_to(:controller => "moto_mileages", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/moto_mileages/1" }.should route_to(:controller => "moto_mileages", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/moto_mileages/1" }.should route_to(:controller => "moto_mileages", :action => "destroy", :id => "1")
    end

  end
end
