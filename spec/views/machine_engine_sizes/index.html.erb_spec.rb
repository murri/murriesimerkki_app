require 'spec_helper'

describe "machine_engine_sizes/index.html.erb" do
  before(:each) do
    assign(:machine_engine_sizes, [
      stub_model(MachineEngineSize,
        :name => "Name"
      ),
      stub_model(MachineEngineSize,
        :name => "Name"
      )
    ])
  end

  it "renders a list of machine_engine_sizes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
