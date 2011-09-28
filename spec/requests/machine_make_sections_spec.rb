require 'spec_helper'

describe "MachineMakeSections" do
  describe "GET /machine_make_sections" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get machine_make_sections_path
      response.status.should be(200)
    end
  end
end
