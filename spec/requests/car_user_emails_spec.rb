require 'spec_helper'

describe "CarUserEmails" do
  describe "GET /car_user_emails" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get car_user_emails_path
      response.status.should be(200)
    end
  end
end
