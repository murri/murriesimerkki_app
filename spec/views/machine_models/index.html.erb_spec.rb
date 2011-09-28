require 'spec_helper'

describe "machine_models/index.html.erb" do
  before(:each) do
    assign(:machine_models, [
      stub_model(MachineModel,
        :name => "Name"
      ),
      stub_model(MachineModel,
        :name => "Name"
      )
    ])
  end

  it "renders a list of machine_models" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
