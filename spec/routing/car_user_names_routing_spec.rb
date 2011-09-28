require "spec_helper"

describe CarUserNamesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/car_user_names" }.should route_to(:controller => "car_user_names", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/car_user_names/new" }.should route_to(:controller => "car_user_names", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/car_user_names/1" }.should route_to(:controller => "car_user_names", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/car_user_names/1/edit" }.should route_to(:controller => "car_user_names", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/car_user_names" }.should route_to(:controller => "car_user_names", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/car_user_names/1" }.should route_to(:controller => "car_user_names", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/car_user_names/1" }.should route_to(:controller => "car_user_names", :action => "destroy", :id => "1")
    end

  end
end
