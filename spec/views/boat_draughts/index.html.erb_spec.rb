require 'spec_helper'

describe "boat_draughts/index.html.erb" do
  before(:each) do
    assign(:boat_draughts, [
      stub_model(BoatDraught,
        :name => "Name"
      ),
      stub_model(BoatDraught,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_draughts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
