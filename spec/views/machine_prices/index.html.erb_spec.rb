require 'spec_helper'

describe "machine_prices/index.html.erb" do
  before(:each) do
    assign(:machine_prices, [
      stub_model(MachinePrice,
        :name => "Name"
      ),
      stub_model(MachinePrice,
        :name => "Name"
      )
    ])
  end

  it "renders a list of machine_prices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
