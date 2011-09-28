require "spec_helper"

describe CarCoverImageUidsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/car_cover_image_uids" }.should route_to(:controller => "car_cover_image_uids", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/car_cover_image_uids/new" }.should route_to(:controller => "car_cover_image_uids", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/car_cover_image_uids/1" }.should route_to(:controller => "car_cover_image_uids", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/car_cover_image_uids/1/edit" }.should route_to(:controller => "car_cover_image_uids", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/car_cover_image_uids" }.should route_to(:controller => "car_cover_image_uids", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/car_cover_image_uids/1" }.should route_to(:controller => "car_cover_image_uids", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/car_cover_image_uids/1" }.should route_to(:controller => "car_cover_image_uids", :action => "destroy", :id => "1")
    end

  end
end
