require "spec_helper"

describe CaravanUserNamesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/caravan_user_names" }.should route_to(:controller => "caravan_user_names", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/caravan_user_names/new" }.should route_to(:controller => "caravan_user_names", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/caravan_user_names/1" }.should route_to(:controller => "caravan_user_names", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/caravan_user_names/1/edit" }.should route_to(:controller => "caravan_user_names", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/caravan_user_names" }.should route_to(:controller => "caravan_user_names", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/caravan_user_names/1" }.should route_to(:controller => "caravan_user_names", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/caravan_user_names/1" }.should route_to(:controller => "caravan_user_names", :action => "destroy", :id => "1")
    end

  end
end
