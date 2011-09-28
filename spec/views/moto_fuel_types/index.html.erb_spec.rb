require 'spec_helper'

describe "moto_fuel_types/index.html.erb" do
  before(:each) do
    assign(:moto_fuel_types, [
      stub_model(MotoFuelType,
        :name => "Name"
      ),
      stub_model(MotoFuelType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of moto_fuel_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
