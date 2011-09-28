require 'spec_helper'

describe "color_types/index.html.erb" do
  before(:each) do
    assign(:color_types, [
      stub_model(ColorType,
        :name => "Name"
      ),
      stub_model(ColorType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of color_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
