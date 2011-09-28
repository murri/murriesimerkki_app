require 'spec_helper'

describe "boat_subtype_sections/show.html.erb" do
  before(:each) do
    @boat_subtype_section = assign(:boat_subtype_section, stub_model(BoatSubtypeSection,
      :name => "Name",
      :boat_type_id => 1
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
