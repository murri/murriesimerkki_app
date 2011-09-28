require 'spec_helper'

describe "boat_colors/index.html.erb" do
  before(:each) do
    assign(:boat_colors, [
      stub_model(BoatColor,
        :name => "Name"
      ),
      stub_model(BoatColor,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_colors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
