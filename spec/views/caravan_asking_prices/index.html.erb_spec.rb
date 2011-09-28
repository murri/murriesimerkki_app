require 'spec_helper'

describe "caravan_asking_prices/index.html.erb" do
  before(:each) do
    assign(:caravan_asking_prices, [
      stub_model(CaravanAskingPrice,
        :name => "Name"
      ),
      stub_model(CaravanAskingPrice,
        :name => "Name"
      )
    ])
  end

  it "renders a list of caravan_asking_prices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
