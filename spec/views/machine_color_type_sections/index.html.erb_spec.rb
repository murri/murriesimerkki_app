require 'spec_helper'

describe "machine_color_type_sections/index.html.erb" do
  before(:each) do
    assign(:machine_color_type_sections, [
      stub_model(MachineColorTypeSection,
        :name => "Name",
        :Machine_color_id => 1
      ),
      stub_model(MachineColorTypeSection,
        :name => "Name",
        :Machine_color_id => 1
      )
    ])
  end

  it "renders a list of machine_color_type_sections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
