require 'spec_helper'

describe "car_accelerations/index.html.erb" do
  before(:each) do
    assign(:car_accelerations, [
      stub_model(CarAcceleration,
        :name => "Name"
      ),
      stub_model(CarAcceleration,
        :name => "Name"
      )
    ])
  end

  it "renders a list of car_accelerations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
