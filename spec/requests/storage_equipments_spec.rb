require 'spec_helper'

describe "StorageEquipments" do
  describe "GET /storage_equipments" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get storage_equipments_path
      response.status.should be(200)
    end
  end
end
