require 'spec_helper'

describe "widths/index.html.erb" do
  before(:each) do
    assign(:widths, [
      stub_model(Width,
        :name => "Name"
      ),
      stub_model(Width,
        :name => "Name"
      )
    ])
  end

  it "renders a list of widths" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
