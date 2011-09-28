require 'spec_helper'

describe "boat_make_sections/show.html.erb" do
  before(:each) do
    @boat_make_section = assign(:boat_make_section, stub_model(BoatMakeSection,
      :name => "Name",
      :boat_sub_type_section_id => 1
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
