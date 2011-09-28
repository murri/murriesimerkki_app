require "spec_helper"

describe IlmoitusController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/ilmoitus" }.should route_to(:controller => "ilmoitus", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/ilmoitus/new" }.should route_to(:controller => "ilmoitus", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/ilmoitus/1" }.should route_to(:controller => "ilmoitus", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/ilmoitus/1/edit" }.should route_to(:controller => "ilmoitus", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/ilmoitus" }.should route_to(:controller => "ilmoitus", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/ilmoitus/1" }.should route_to(:controller => "ilmoitus", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/ilmoitus/1" }.should route_to(:controller => "ilmoitus", :action => "destroy", :id => "1")
    end

  end
end
