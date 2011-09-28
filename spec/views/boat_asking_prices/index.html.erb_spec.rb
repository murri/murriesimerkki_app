require 'spec_helper'

describe "boat_asking_prices/index.html.erb" do
  before(:each) do
    assign(:boat_asking_prices, [
      stub_model(BoatAskingPrice,
        :name => "Name"
      ),
      stub_model(BoatAskingPrice,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_asking_prices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
