require 'spec_helper'

describe "machine_gross_weights/index.html.erb" do
  before(:each) do
    assign(:machine_gross_weights, [
      stub_model(MachineGrossWeight,
        :name => "Name"
      ),
      stub_model(MachineGrossWeight,
        :name => "Name"
      )
    ])
  end

  it "renders a list of machine_gross_weights" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
