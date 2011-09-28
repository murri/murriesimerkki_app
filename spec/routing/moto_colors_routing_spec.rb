require "spec_helper"

describe MotoColorsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/moto_colors" }.should route_to(:controller => "moto_colors", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/moto_colors/new" }.should route_to(:controller => "moto_colors", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/moto_colors/1" }.should route_to(:controller => "moto_colors", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/moto_colors/1/edit" }.should route_to(:controller => "moto_colors", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/moto_colors" }.should route_to(:controller => "moto_colors", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/moto_colors/1" }.should route_to(:controller => "moto_colors", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/moto_colors/1" }.should route_to(:controller => "moto_colors", :action => "destroy", :id => "1")
    end

  end
end
