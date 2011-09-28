require "spec_helper"

describe CaravanPostsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/caravan_posts" }.should route_to(:controller => "caravan_posts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/caravan_posts/new" }.should route_to(:controller => "caravan_posts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/caravan_posts/1" }.should route_to(:controller => "caravan_posts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/caravan_posts/1/edit" }.should route_to(:controller => "caravan_posts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/caravan_posts" }.should route_to(:controller => "caravan_posts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/caravan_posts/1" }.should route_to(:controller => "caravan_posts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/caravan_posts/1" }.should route_to(:controller => "caravan_posts", :action => "destroy", :id => "1")
    end

  end
end
