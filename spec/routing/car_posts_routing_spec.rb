require "spec_helper"

describe CarPostsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/car_posts" }.should route_to(:controller => "car_posts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/car_posts/new" }.should route_to(:controller => "car_posts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/car_posts/1" }.should route_to(:controller => "car_posts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/car_posts/1/edit" }.should route_to(:controller => "car_posts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/car_posts" }.should route_to(:controller => "car_posts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/car_posts/1" }.should route_to(:controller => "car_posts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/car_posts/1" }.should route_to(:controller => "car_posts", :action => "destroy", :id => "1")
    end

  end
end
