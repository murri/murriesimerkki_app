require 'spec_helper'

describe "boat_make_sections/edit.html.erb" do
  before(:each) do
    @boat_make_section = assign(:boat_make_section, stub_model(BoatMakeSection,
      :name => "MyString",
      :boat_sub_type_section_id => 1
    ))
  end

  it "renders the edit boat_make_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_make_sections_path(@boat_make_section), :method => "post" do
      assert_select "input#boat_make_section_name", :name => "boat_make_section[name]"
      assert_select "input#boat_make_section_boat_sub_type_section_id", :name => "boat_make_section[boat_sub_type_section_id]"
    end
  end
end
