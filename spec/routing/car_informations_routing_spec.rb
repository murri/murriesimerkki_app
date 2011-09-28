require "spec_helper"

describe CarInformationsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/car_informations" }.should route_to(:controller => "car_informations", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/car_informations/new" }.should route_to(:controller => "car_informations", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/car_informations/1" }.should route_to(:controller => "car_informations", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/car_informations/1/edit" }.should route_to(:controller => "car_informations", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/car_informations" }.should route_to(:controller => "car_informations", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/car_informations/1" }.should route_to(:controller => "car_informations", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/car_informations/1" }.should route_to(:controller => "car_informations", :action => "destroy", :id => "1")
    end

  end
end
