require 'spec_helper'

describe "machine_types/show.html.erb" do
  before(:each) do
    @machine_type = assign(:machine_type, stub_model(MachineType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
