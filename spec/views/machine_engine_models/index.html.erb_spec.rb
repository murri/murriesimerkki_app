require 'spec_helper'

describe "machine_engine_models/index.html.erb" do
  before(:each) do
    assign(:machine_engine_models, [
      stub_model(MachineEngineModel,
        :name => "Name"
      ),
      stub_model(MachineEngineModel,
        :name => "Name"
      )
    ])
  end

  it "renders a list of machine_engine_models" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
