require 'spec_helper'

describe "MachineColors" do
  describe "GET /machine_colors" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get machine_colors_path
      response.status.should be(200)
    end
  end
end
