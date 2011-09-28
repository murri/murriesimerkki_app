require 'spec_helper'

describe "boat_heights/index.html.erb" do
  before(:each) do
    assign(:boat_heights, [
      stub_model(BoatHeight,
        :name => "Name"
      ),
      stub_model(BoatHeight,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_heights" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
