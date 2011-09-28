require 'spec_helper'

describe "prices/index.html.erb" do
  before(:each) do
    assign(:prices, [
      stub_model(Price,
        :name => "Name"
      ),
      stub_model(Price,
        :name => "Name"
      )
    ])
  end

  it "renders a list of prices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
