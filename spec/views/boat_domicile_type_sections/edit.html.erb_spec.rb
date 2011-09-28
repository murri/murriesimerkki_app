require 'spec_helper'

describe "boat_domicile_type_sections/edit.html.erb" do
  before(:each) do
    @boat_domicile_type_section = assign(:boat_domicile_type_section, stub_model(BoatDomicileTypeSection,
      :name => "MyString",
      :boats_position_town_type_id => 1
    ))
  end

  it "renders the edit boat_domicile_type_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_domicile_type_sections_path(@boat_domicile_type_section), :method => "post" do
      assert_select "input#boat_domicile_type_section_name", :name => "boat_domicile_type_section[name]"
      assert_select "input#boat_domicile_type_section_boats_position_town_type_id", :name => "boat_domicile_type_section[boats_position_town_type_id]"
    end
  end
end
