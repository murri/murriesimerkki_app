require 'spec_helper'

describe "BoatWidths" do
  describe "GET /boat_widths" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get boat_widths_path
      response.status.should be(200)
    end
  end
end
