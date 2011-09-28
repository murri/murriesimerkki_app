require 'spec_helper'

describe "MotoEngineSizes" do
  describe "GET /moto_engine_sizes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get moto_engine_sizes_path
      response.status.should be(200)
    end
  end
end
