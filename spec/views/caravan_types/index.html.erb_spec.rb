require 'spec_helper'

describe "caravan_types/index.html.erb" do
  before(:each) do
    assign(:caravan_types, [
      stub_model(CaravanType,
        :name => "Name"
      ),
      stub_model(CaravanType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of caravan_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
