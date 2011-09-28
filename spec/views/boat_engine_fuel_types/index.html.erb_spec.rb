require 'spec_helper'

describe "boat_engine_fuel_types/index.html.erb" do
  before(:each) do
    assign(:boat_engine_fuel_types, [
      stub_model(BoatEngineFuelType,
        :name => "Name"
      ),
      stub_model(BoatEngineFuelType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_engine_fuel_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
