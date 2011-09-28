require 'spec_helper'

describe "car_prices/index.html.erb" do
  before(:each) do
    assign(:car_prices, [
      stub_model(CarPrice,
        :name => "Name"
      ),
      stub_model(CarPrice,
        :name => "Name"
      )
    ])
  end

  it "renders a list of car_prices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
