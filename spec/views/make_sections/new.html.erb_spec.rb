require 'spec_helper'

describe "make_sections/new.html.erb" do
  before(:each) do
    assign(:make_section, stub_model(MakeSection,
      :name => "MyString",
      :type_id => 1
    ).as_new_record)
  end

  it "renders new make_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => make_sections_path, :method => "post" do
      assert_select "input#make_section_name", :name => "make_section[name]"
      assert_select "input#make_section_type_id", :name => "make_section[type_id]"
    end
  end
end
