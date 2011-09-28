require 'spec_helper'

describe "boat_domicile_types/index.html.erb" do
  before(:each) do
    assign(:boat_domicile_types, [
      stub_model(BoatDomicileType,
        :name => "Name"
      ),
      stub_model(BoatDomicileType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_domicile_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
