require 'spec_helper'

describe "car_engine_sizes/index.html.erb" do
  before(:each) do
    assign(:car_engine_sizes, [
      stub_model(CarEngineSize,
        :name => "Name"
      ),
      stub_model(CarEngineSize,
        :name => "Name"
      )
    ])
  end

  it "renders a list of car_engine_sizes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
