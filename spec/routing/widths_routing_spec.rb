require "spec_helper"

describe WidthsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/widths" }.should route_to(:controller => "widths", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/widths/new" }.should route_to(:controller => "widths", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/widths/1" }.should route_to(:controller => "widths", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/widths/1/edit" }.should route_to(:controller => "widths", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/widths" }.should route_to(:controller => "widths", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/widths/1" }.should route_to(:controller => "widths", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/widths/1" }.should route_to(:controller => "widths", :action => "destroy", :id => "1")
    end

  end
end
