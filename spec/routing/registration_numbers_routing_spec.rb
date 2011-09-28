require "spec_helper"

describe RegistrationNumbersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/registration_numbers" }.should route_to(:controller => "registration_numbers", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/registration_numbers/new" }.should route_to(:controller => "registration_numbers", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/registration_numbers/1" }.should route_to(:controller => "registration_numbers", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/registration_numbers/1/edit" }.should route_to(:controller => "registration_numbers", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/registration_numbers" }.should route_to(:controller => "registration_numbers", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/registration_numbers/1" }.should route_to(:controller => "registration_numbers", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/registration_numbers/1" }.should route_to(:controller => "registration_numbers", :action => "destroy", :id => "1")
    end

  end
end
