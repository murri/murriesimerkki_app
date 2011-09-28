require 'spec_helper'

describe "car_gearbox_types/index.html.erb" do
  before(:each) do
    assign(:car_gearbox_types, [
      stub_model(CarGearboxType,
        :name => "Name"
      ),
      stub_model(CarGearboxType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of car_gearbox_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
