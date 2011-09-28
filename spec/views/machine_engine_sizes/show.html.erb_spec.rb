require 'spec_helper'

describe "machine_engine_sizes/show.html.erb" do
  before(:each) do
    @machine_engine_size = assign(:machine_engine_size, stub_model(MachineEngineSize,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
