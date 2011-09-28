require 'spec_helper'

describe "moto_colors/index.html.erb" do
  before(:each) do
    assign(:moto_colors, [
      stub_model(MotoColor,
        :name => "Name"
      ),
      stub_model(MotoColor,
        :name => "Name"
      )
    ])
  end

  it "renders a list of moto_colors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
