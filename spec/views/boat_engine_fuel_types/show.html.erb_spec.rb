require 'spec_helper'

describe "boat_engine_fuel_types/show.html.erb" do
  before(:each) do
    @boat_engine_fuel_type = assign(:boat_engine_fuel_type, stub_model(BoatEngineFuelType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
