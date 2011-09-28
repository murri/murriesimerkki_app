require 'spec_helper'

describe "CarTotalOwners" do
  describe "GET /car_total_owners" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get car_total_owners_path
      response.status.should be(200)
    end
  end
end
