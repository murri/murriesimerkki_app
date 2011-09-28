require 'spec_helper'

describe "Lengths" do
  describe "GET /lengths" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get lengths_path
      response.status.should be(200)
    end
  end
end
