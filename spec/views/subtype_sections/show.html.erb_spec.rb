require 'spec_helper'

describe "subtype_sections/show.html.erb" do
  before(:each) do
    @subtype_section = assign(:subtype_section, stub_model(SubtypeSection,
      :name => "Name",
      :type_id => 1
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
