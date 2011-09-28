require 'spec_helper'

describe "domicile_type_sections/edit.html.erb" do
  before(:each) do
    @domicile_type_section = assign(:domicile_type_section, stub_model(DomicileTypeSection,
      :name => "MyString",
      :boats_position_town_type_id => 1
    ))
  end

  it "renders the edit domicile_type_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => domicile_type_sections_path(@domicile_type_section), :method => "post" do
      assert_select "input#domicile_type_section_name", :name => "domicile_type_section[name]"
      assert_select "input#domicile_type_section_boats_position_town_type_id", :name => "domicile_type_section[boats_position_town_type_id]"
    end
  end
end
