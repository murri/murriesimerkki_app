require 'spec_helper'

describe "machine_make_sections/show.html.erb" do
  before(:each) do
    @machine_make_section = assign(:machine_make_section, stub_model(MachineMakeSection,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
