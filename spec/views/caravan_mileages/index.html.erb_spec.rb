require 'spec_helper'

describe "caravan_mileages/index.html.erb" do
  before(:each) do
    assign(:caravan_mileages, [
      stub_model(CaravanMileage,
        :name => "Name"
      ),
      stub_model(CaravanMileage,
        :name => "Name"
      )
    ])
  end

  it "renders a list of caravan_mileages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
