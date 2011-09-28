require "spec_helper"

describe DraughtsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/draughts" }.should route_to(:controller => "draughts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/draughts/new" }.should route_to(:controller => "draughts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/draughts/1" }.should route_to(:controller => "draughts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/draughts/1/edit" }.should route_to(:controller => "draughts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/draughts" }.should route_to(:controller => "draughts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/draughts/1" }.should route_to(:controller => "draughts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/draughts/1" }.should route_to(:controller => "draughts", :action => "destroy", :id => "1")
    end

  end
end
