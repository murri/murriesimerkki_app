require 'spec_helper'

describe "machine_town_type_sections/edit.html.erb" do
  before(:each) do
    @machine_town_type_section = assign(:machine_town_type_section, stub_model(MachineTownTypeSection,
      :name => "MyString",
      :Machine_Domicile_type_id => 1
    ))
  end

  it "renders the edit machine_town_type_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_town_type_sections_path(@machine_town_type_section), :method => "post" do
      assert_select "input#machine_town_type_section_name", :name => "machine_town_type_section[name]"
      assert_select "input#machine_town_type_section_Machine_Domicile_type_id", :name => "machine_town_type_section[Machine_Domicile_type_id]"
    end
  end
end
