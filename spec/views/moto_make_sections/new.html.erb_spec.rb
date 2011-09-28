require 'spec_helper'

describe "moto_make_sections/new.html.erb" do
  before(:each) do
    assign(:moto_make_section, stub_model(MotoMakeSection,
      :name => "MyString",
      :type_id => 1
    ).as_new_record)
  end

  it "renders new moto_make_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_make_sections_path, :method => "post" do
      assert_select "input#moto_make_section_name", :name => "moto_make_section[name]"
      assert_select "input#moto_make_section_type_id", :name => "moto_make_section[type_id]"
    end
  end
end
