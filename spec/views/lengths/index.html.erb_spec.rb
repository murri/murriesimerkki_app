require 'spec_helper'

describe "lengths/index.html.erb" do
  before(:each) do
    assign(:lengths, [
      stub_model(Length,
        :name => "Name"
      ),
      stub_model(Length,
        :name => "Name"
      )
    ])
  end

  it "renders a list of lengths" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
