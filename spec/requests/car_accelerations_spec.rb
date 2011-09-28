require 'spec_helper'

describe "CarAccelerations" do
  describe "GET /car_accelerations" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get car_accelerations_path
      response.status.should be(200)
    end
  end
end
