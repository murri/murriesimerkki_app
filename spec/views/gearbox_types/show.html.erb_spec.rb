require 'spec_helper'

describe "gearbox_types/show.html.erb" do
  before(:each) do
    @gearbox_type = assign(:gearbox_type, stub_model(GearboxType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
