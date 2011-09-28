require "spec_helper"

describe BoatPostsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/boat_posts" }.should route_to(:controller => "boat_posts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/boat_posts/new" }.should route_to(:controller => "boat_posts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/boat_posts/1" }.should route_to(:controller => "boat_posts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/boat_posts/1/edit" }.should route_to(:controller => "boat_posts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/boat_posts" }.should route_to(:controller => "boat_posts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/boat_posts/1" }.should route_to(:controller => "boat_posts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boat_posts/1" }.should route_to(:controller => "boat_posts", :action => "destroy", :id => "1")
    end

  end
end
