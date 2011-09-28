require 'spec_helper'

describe "make_sections/edit.html.erb" do
  before(:each) do
    @make_section = assign(:make_section, stub_model(MakeSection,
      :name => "MyString",
      :type_id => 1
    ))
  end

  it "renders the edit make_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => make_sections_path(@make_section), :method => "post" do
      assert_select "input#make_section_name", :name => "make_section[name]"
      assert_select "input#make_section_type_id", :name => "make_section[type_id]"
    end
  end
end
