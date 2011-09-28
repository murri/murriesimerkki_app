require 'spec_helper'

describe "boat_sub_types/index.html.erb" do
  before(:each) do
    assign(:boat_sub_types, [
      stub_model(BoatSubType,
        :name => "Name"
      ),
      stub_model(BoatSubType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_sub_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
