require 'spec_helper'

describe "boat_town_type_sections/edit.html.erb" do
  before(:each) do
    @boat_town_type_section = assign(:boat_town_type_section, stub_model(BoatTownTypeSection,
      :name => "MyString",
      :boat_domicile_type_id => 1
    ))
  end

  it "renders the edit boat_town_type_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_town_type_sections_path(@boat_town_type_section), :method => "post" do
      assert_select "input#boat_town_type_section_name", :name => "boat_town_type_section[name]"
      assert_select "input#boat_town_type_section_boat_domicile_type_id", :name => "boat_town_type_section[boat_domicile_type_id]"
    end
  end
end
