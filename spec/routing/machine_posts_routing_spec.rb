require "spec_helper"

describe MachinePostsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/machine_posts" }.should route_to(:controller => "machine_posts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/machine_posts/new" }.should route_to(:controller => "machine_posts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/machine_posts/1" }.should route_to(:controller => "machine_posts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/machine_posts/1/edit" }.should route_to(:controller => "machine_posts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/machine_posts" }.should route_to(:controller => "machine_posts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/machine_posts/1" }.should route_to(:controller => "machine_posts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/machine_posts/1" }.should route_to(:controller => "machine_posts", :action => "destroy", :id => "1")
    end

  end
end
