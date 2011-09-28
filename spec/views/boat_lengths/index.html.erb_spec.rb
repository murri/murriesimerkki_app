require 'spec_helper'

describe "boat_lengths/index.html.erb" do
  before(:each) do
    assign(:boat_lengths, [
      stub_model(BoatLength,
        :name => "Name"
      ),
      stub_model(BoatLength,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_lengths" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
