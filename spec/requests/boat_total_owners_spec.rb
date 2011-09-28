require 'spec_helper'

describe "BoatTotalOwners" do
  describe "GET /boat_total_owners" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get boat_total_owners_path
      response.status.should be(200)
    end
  end
end
