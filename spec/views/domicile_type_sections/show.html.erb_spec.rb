require 'spec_helper'

describe "domicile_type_sections/show.html.erb" do
  before(:each) do
    @domicile_type_section = assign(:domicile_type_section, stub_model(DomicileTypeSection,
      :name => "Name",
      :boats_position_town_type_id => 1
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
