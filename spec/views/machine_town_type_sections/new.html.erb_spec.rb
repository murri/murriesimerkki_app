require 'spec_helper'

describe "machine_town_type_sections/new.html.erb" do
  before(:each) do
    assign(:machine_town_type_section, stub_model(MachineTownTypeSection,
      :name => "MyString",
      :Machine_Domicile_type_id => 1
    ).as_new_record)
  end

  it "renders new machine_town_type_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_town_type_sections_path, :method => "post" do
      assert_select "input#machine_town_type_section_name", :name => "machine_town_type_section[name]"
      assert_select "input#machine_town_type_section_Machine_Domicile_type_id", :name => "machine_town_type_section[Machine_Domicile_type_id]"
    end
  end
end
