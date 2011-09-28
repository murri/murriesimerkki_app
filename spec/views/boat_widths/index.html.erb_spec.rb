require 'spec_helper'

describe "boat_widths/index.html.erb" do
  before(:each) do
    assign(:boat_widths, [
      stub_model(BoatWidth,
        :name => "Name"
      ),
      stub_model(BoatWidth,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_widths" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
