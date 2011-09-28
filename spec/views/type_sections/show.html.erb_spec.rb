require 'spec_helper'

describe "type_sections/show.html.erb" do
  before(:each) do
    @type_section = assign(:type_section, stub_model(TypeSection,
      :name => "Name",
      :vehicle_class_id => 1
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
