require 'spec_helper'

describe "machine_category_sections/new.html.erb" do
  before(:each) do
    assign(:machine_category_section, stub_model(MachineCategorySection,
      :name => "MyString",
      :machine_type_id => 1
    ).as_new_record)
  end

  it "renders new machine_category_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_category_sections_path, :method => "post" do
      assert_select "input#machine_category_section_name", :name => "machine_category_section[name]"
      assert_select "input#machine_category_section_machine_type_id", :name => "machine_category_section[machine_type_id]"
    end
  end
end
