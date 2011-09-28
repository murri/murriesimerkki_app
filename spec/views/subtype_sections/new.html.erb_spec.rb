require 'spec_helper'

describe "subtype_sections/new.html.erb" do
  before(:each) do
    assign(:subtype_section, stub_model(SubtypeSection,
      :name => "MyString",
      :type_id => 1
    ).as_new_record)
  end

  it "renders new subtype_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => subtype_sections_path, :method => "post" do
      assert_select "input#subtype_section_name", :name => "subtype_section[name]"
      assert_select "input#subtype_section_type_id", :name => "subtype_section[type_id]"
    end
  end
end
