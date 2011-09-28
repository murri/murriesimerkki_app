require 'spec_helper'

describe "machine_color_types/show.html.erb" do
  before(:each) do
    @machine_color_type = assign(:machine_color_type, stub_model(MachineColorType,
      :name => "Name",
      :Machine_color_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
