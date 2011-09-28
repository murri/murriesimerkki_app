require 'spec_helper'

describe "car_weights/index.html.erb" do
  before(:each) do
    assign(:car_weights, [
      stub_model(CarWeight,
        :name => "Name"
      ),
      stub_model(CarWeight,
        :name => "Name"
      )
    ])
  end

  it "renders a list of car_weights" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
