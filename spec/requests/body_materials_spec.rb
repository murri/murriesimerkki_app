require 'spec_helper'

describe "BodyMaterials" do
  describe "GET /body_materials" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get body_materials_path
      response.status.should be(200)
    end
  end
end
