require 'spec_helper'

describe "MachineUserEmails" do
  describe "GET /machine_user_emails" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get machine_user_emails_path
      response.status.should be(200)
    end
  end
end
