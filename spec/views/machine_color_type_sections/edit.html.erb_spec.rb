require 'spec_helper'

describe "machine_color_type_sections/edit.html.erb" do
  before(:each) do
    @machine_color_type_section = assign(:machine_color_type_section, stub_model(MachineColorTypeSection,
      :name => "MyString",
      :Machine_color_id => 1
    ))
  end

  it "renders the edit machine_color_type_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_color_type_sections_path(@machine_color_type_section), :method => "post" do
      assert_select "input#machine_color_type_section_name", :name => "machine_color_type_section[name]"
      assert_select "input#machine_color_type_section_Machine_color_id", :name => "machine_color_type_section[Machine_color_id]"
    end
  end
end
