require 'spec_helper'

describe "BoatStorageEquipments" do
  describe "GET /boat_storage_equipments" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get boat_storage_equipments_path
      response.status.should be(200)
    end
  end
end
