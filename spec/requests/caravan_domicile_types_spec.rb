require 'spec_helper'

describe "CaravanDomicileTypes" do
  describe "GET /caravan_domicile_types" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get caravan_domicile_types_path
      response.status.should be(200)
    end
  end
end
