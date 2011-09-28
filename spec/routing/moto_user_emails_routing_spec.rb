require "spec_helper"

describe MotoUserEmailsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/moto_user_emails" }.should route_to(:controller => "moto_user_emails", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/moto_user_emails/new" }.should route_to(:controller => "moto_user_emails", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/moto_user_emails/1" }.should route_to(:controller => "moto_user_emails", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/moto_user_emails/1/edit" }.should route_to(:controller => "moto_user_emails", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/moto_user_emails" }.should route_to(:controller => "moto_user_emails", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/moto_user_emails/1" }.should route_to(:controller => "moto_user_emails", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/moto_user_emails/1" }.should route_to(:controller => "moto_user_emails", :action => "destroy", :id => "1")
    end

  end
end
