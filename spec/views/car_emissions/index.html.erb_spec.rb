require 'spec_helper'

describe "car_emissions/index.html.erb" do
  before(:each) do
    assign(:car_emissions, [
      stub_model(CarEmission,
        :name => "Name"
      ),
      stub_model(CarEmission,
        :name => "Name"
      )
    ])
  end

  it "renders a list of car_emissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
