require 'spec_helper'

describe "machine_colors/index.html.erb" do
  before(:each) do
    assign(:machine_colors, [
      stub_model(MachineColor,
        :name => "Name"
      ),
      stub_model(MachineColor,
        :name => "Name"
      )
    ])
  end

  it "renders a list of machine_colors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
