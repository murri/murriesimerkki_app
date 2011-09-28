require "spec_helper"

describe CaravanCoverImageUidsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/caravan_cover_image_uids" }.should route_to(:controller => "caravan_cover_image_uids", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/caravan_cover_image_uids/new" }.should route_to(:controller => "caravan_cover_image_uids", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/caravan_cover_image_uids/1" }.should route_to(:controller => "caravan_cover_image_uids", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/caravan_cover_image_uids/1/edit" }.should route_to(:controller => "caravan_cover_image_uids", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/caravan_cover_image_uids" }.should route_to(:controller => "caravan_cover_image_uids", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/caravan_cover_image_uids/1" }.should route_to(:controller => "caravan_cover_image_uids", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/caravan_cover_image_uids/1" }.should route_to(:controller => "caravan_cover_image_uids", :action => "destroy", :id => "1")
    end

  end
end
