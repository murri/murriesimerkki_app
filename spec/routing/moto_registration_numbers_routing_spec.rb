require "spec_helper"

describe MotoRegistrationNumbersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/moto_registration_numbers" }.should route_to(:controller => "moto_registration_numbers", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/moto_registration_numbers/new" }.should route_to(:controller => "moto_registration_numbers", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/moto_registration_numbers/1" }.should route_to(:controller => "moto_registration_numbers", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/moto_registration_numbers/1/edit" }.should route_to(:controller => "moto_registration_numbers", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/moto_registration_numbers" }.should route_to(:controller => "moto_registration_numbers", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/moto_registration_numbers/1" }.should route_to(:controller => "moto_registration_numbers", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/moto_registration_numbers/1" }.should route_to(:controller => "moto_registration_numbers", :action => "destroy", :id => "1")
    end

  end
end
