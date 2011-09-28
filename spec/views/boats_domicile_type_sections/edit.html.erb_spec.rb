require 'spec_helper'

describe "boats_domicile_type_sections/edit.html.erb" do
  before(:each) do
    @boats_domicile_type_section = assign(:boats_domicile_type_section, stub_model(BoatsDomicileTypeSection,
      :name => "MyString",
      :boats_position_town_type_id => 1
    ))
  end

  it "renders the edit boats_domicile_type_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boats_domicile_type_sections_path(@boats_domicile_type_section), :method => "post" do
      assert_select "input#boats_domicile_type_section_name", :name => "boats_domicile_type_section[name]"
      assert_select "input#boats_domicile_type_section_boats_position_town_type_id", :name => "boats_domicile_type_section[boats_position_town_type_id]"
    end
  end
end
