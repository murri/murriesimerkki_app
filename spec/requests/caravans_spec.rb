require 'spec_helper'

describe "Caravans" do
  describe "GET /caravans" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get caravans_path
      response.status.should be(200)
    end
  end
end
