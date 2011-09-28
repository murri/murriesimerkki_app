require "spec_helper"

describe MotoInformationsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/moto_informations" }.should route_to(:controller => "moto_informations", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/moto_informations/new" }.should route_to(:controller => "moto_informations", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/moto_informations/1" }.should route_to(:controller => "moto_informations", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/moto_informations/1/edit" }.should route_to(:controller => "moto_informations", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/moto_informations" }.should route_to(:controller => "moto_informations", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/moto_informations/1" }.should route_to(:controller => "moto_informations", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/moto_informations/1" }.should route_to(:controller => "moto_informations", :action => "destroy", :id => "1")
    end

  end
end
