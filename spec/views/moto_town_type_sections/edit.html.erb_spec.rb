require 'spec_helper'

describe "moto_town_type_sections/edit.html.erb" do
  before(:each) do
    @moto_town_type_section = assign(:moto_town_type_section, stub_model(MotoTownTypeSection,
      :name => "MyString",
      :moto_domicile_type_id => 1
    ))
  end

  it "renders the edit moto_town_type_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_town_type_sections_path(@moto_town_type_section), :method => "post" do
      assert_select "input#moto_town_type_section_name", :name => "moto_town_type_section[name]"
      assert_select "input#moto_town_type_section_moto_domicile_type_id", :name => "moto_town_type_section[moto_domicile_type_id]"
    end
  end
end
