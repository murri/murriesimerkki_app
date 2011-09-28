require 'spec_helper'

describe "machine_sub_type_sections/edit.html.erb" do
  before(:each) do
    @machine_sub_type_section = assign(:machine_sub_type_section, stub_model(MachineSubTypeSection,
      :name => "MyString",
      :machine_category_id => 1
    ))
  end

  it "renders the edit machine_sub_type_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_sub_type_sections_path(@machine_sub_type_section), :method => "post" do
      assert_select "input#machine_sub_type_section_name", :name => "machine_sub_type_section[name]"
      assert_select "input#machine_sub_type_section_machine_category_id", :name => "machine_sub_type_section[machine_category_id]"
    end
  end
end
