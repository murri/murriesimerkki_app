require "spec_helper"

describe CaravanUserPhonesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/caravan_user_phones" }.should route_to(:controller => "caravan_user_phones", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/caravan_user_phones/new" }.should route_to(:controller => "caravan_user_phones", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/caravan_user_phones/1" }.should route_to(:controller => "caravan_user_phones", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/caravan_user_phones/1/edit" }.should route_to(:controller => "caravan_user_phones", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/caravan_user_phones" }.should route_to(:controller => "caravan_user_phones", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/caravan_user_phones/1" }.should route_to(:controller => "caravan_user_phones", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/caravan_user_phones/1" }.should route_to(:controller => "caravan_user_phones", :action => "destroy", :id => "1")
    end

  end
end
