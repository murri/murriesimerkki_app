require 'spec_helper'

describe "caravan_model_sections/show.html.erb" do
  before(:each) do
    @caravan_model_section = assign(:caravan_model_section, stub_model(CaravanModelSection,
      :name => "Name",
      :caravan_make_section_id => 1
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
