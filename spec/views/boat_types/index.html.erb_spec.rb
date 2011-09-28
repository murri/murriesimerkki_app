require 'spec_helper'

describe "boat_types/index.html.erb" do
  before(:each) do
    assign(:boat_types, [
      stub_model(BoatType,
        :name => "Name"
      ),
      stub_model(BoatType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
