require 'spec_helper'

describe "machine_gross_weights/show.html.erb" do
  before(:each) do
    @machine_gross_weight = assign(:machine_gross_weight, stub_model(MachineGrossWeight,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
