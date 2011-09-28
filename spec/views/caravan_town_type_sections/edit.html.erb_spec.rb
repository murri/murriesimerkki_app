require 'spec_helper'

describe "caravan_town_type_sections/edit.html.erb" do
  before(:each) do
    @caravan_town_type_section = assign(:caravan_town_type_section, stub_model(CaravanTownTypeSection,
      :name => "MyString",
      :caravan_domicile_type_id => 1
    ))
  end

  it "renders the edit caravan_town_type_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_town_type_sections_path(@caravan_town_type_section), :method => "post" do
      assert_select "input#caravan_town_type_section_name", :name => "caravan_town_type_section[name]"
      assert_select "input#caravan_town_type_section_caravan_domicile_type_id", :name => "caravan_town_type_section[caravan_domicile_type_id]"
    end
  end
end
