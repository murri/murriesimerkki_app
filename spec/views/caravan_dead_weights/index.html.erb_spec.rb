require 'spec_helper'

describe "caravan_dead_weights/index.html.erb" do
  before(:each) do
    assign(:caravan_dead_weights, [
      stub_model(CaravanDeadWeight,
        :name => "Name"
      ),
      stub_model(CaravanDeadWeight,
        :name => "Name"
      )
    ])
  end

  it "renders a list of caravan_dead_weights" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
