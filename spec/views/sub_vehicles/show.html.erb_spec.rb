require 'spec_helper'

describe "sub_vehicles/show.html.erb" do
  before(:each) do
    @sub_vehicle = assign(:sub_vehicle, stub_model(SubVehicle,
      :name => "Name",
      :vehicle_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
