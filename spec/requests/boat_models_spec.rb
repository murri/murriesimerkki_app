require 'spec_helper'

describe "BoatModels" do
  describe "GET /boat_models" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get boat_models_path
      response.status.should be(200)
    end
  end
end
