require "spec_helper"

describe MotoPostsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/moto_posts" }.should route_to(:controller => "moto_posts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/moto_posts/new" }.should route_to(:controller => "moto_posts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/moto_posts/1" }.should route_to(:controller => "moto_posts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/moto_posts/1/edit" }.should route_to(:controller => "moto_posts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/moto_posts" }.should route_to(:controller => "moto_posts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/moto_posts/1" }.should route_to(:controller => "moto_posts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/moto_posts/1" }.should route_to(:controller => "moto_posts", :action => "destroy", :id => "1")
    end

  end
end
