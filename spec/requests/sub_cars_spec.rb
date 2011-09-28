require 'spec_helper'

describe "SubCars" do
  describe "GET /sub_cars" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get sub_cars_path
      response.status.should be(200)
    end
  end
end
