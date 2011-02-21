require 'spec_helper'

describe PagesController do

  describe "GET 'usage'" do
    it "should be successful" do
      get 'usage'
      response.should be_success
    end
  end

  describe "GET 'post'" do
    it "should be successful" do
      get 'post'
      response.should be_success
    end
  end

end
