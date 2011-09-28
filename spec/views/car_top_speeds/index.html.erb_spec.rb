require 'spec_helper'

describe "car_top_speeds/index.html.erb" do
  before(:each) do
    assign(:car_top_speeds, [
      stub_model(CarTopSpeed,
        :name => "Name"
      ),
      stub_model(CarTopSpeed,
        :name => "Name"
      )
    ])
  end

  it "renders a list of car_top_speeds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
