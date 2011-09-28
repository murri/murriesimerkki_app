require 'spec_helper'

describe "MotoColors" do
  describe "GET /moto_colors" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get moto_colors_path
      response.status.should be(200)
    end
  end
end
