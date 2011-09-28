require 'spec_helper'

describe "asking_prices/index.html.erb" do
  before(:each) do
    assign(:asking_prices, [
      stub_model(AskingPrice,
        :name => "Name"
      ),
      stub_model(AskingPrice,
        :name => "Name"
      )
    ])
  end

  it "renders a list of asking_prices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
