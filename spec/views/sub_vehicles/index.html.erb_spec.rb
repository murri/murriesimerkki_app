require 'spec_helper'

describe "sub_vehicles/index.html.erb" do
  before(:each) do
    assign(:sub_vehicles, [
      stub_model(SubVehicle,
        :name => "Name",
        :vehicle_id => 1
      ),
      stub_model(SubVehicle,
        :name => "Name",
        :vehicle_id => 1
      )
    ])
  end

  it "renders a list of sub_vehicles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
