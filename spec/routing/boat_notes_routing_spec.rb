require "spec_helper"

describe BoatNotesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_notes" }.should route_to(:controller => "boat_notes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_notes/new" }.should route_to(:controller => "boat_notes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_notes/1" }.should route_to(:controller => "boat_notes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_notes/1/edit" }.should route_to(:controller => "boat_notes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_notes" }.should route_to(:controller => "boat_notes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_notes/1" }.should route_to(:controller => "boat_notes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_notes/1" }.should route_to(:controller => "boat_notes", :action => "destroy", :id => "1")
    end

  end
end
