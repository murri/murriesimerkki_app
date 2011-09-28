require 'spec_helper'

describe "type_sections/edit.html.erb" do
  before(:each) do
    @type_section = assign(:type_section, stub_model(TypeSection,
      :name => "MyString",
      :vehicle_class_id => 1
    ))
  end

  it "renders the edit type_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => type_sections_path(@type_section), :method => "post" do
      assert_select "input#type_section_name", :name => "type_section[name]"
      assert_select "input#type_section_vehicle_class_id", :name => "type_section[vehicle_class_id]"
    end
  end
end
