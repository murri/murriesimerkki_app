require 'spec_helper'

describe "boat_weights/index.html.erb" do
  before(:each) do
    assign(:boat_weights, [
      stub_model(BoatWeight,
        :name => "Name"
      ),
      stub_model(BoatWeight,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_weights" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
