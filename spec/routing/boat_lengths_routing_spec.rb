require "spec_helper"

describe BoatLengthsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_lengths" }.should route_to(:controller => "boat_lengths", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_lengths/new" }.should route_to(:controller => "boat_lengths", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_lengths/1" }.should route_to(:controller => "boat_lengths", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_lengths/1/edit" }.should route_to(:controller => "boat_lengths", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_lengths" }.should route_to(:controller => "boat_lengths", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_lengths/1" }.should route_to(:controller => "boat_lengths", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_lengths/1" }.should route_to(:controller => "boat_lengths", :action => "destroy", :id => "1")
    end

  end
end
