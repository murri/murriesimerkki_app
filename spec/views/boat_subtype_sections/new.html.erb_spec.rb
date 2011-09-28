require 'spec_helper'

describe "boat_subtype_sections/new.html.erb" do
  before(:each) do
    assign(:boat_subtype_section, stub_model(BoatSubtypeSection,
      :name => "MyString",
      :boat_type_id => 1
    ).as_new_record)
  end

  it "renders new boat_subtype_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_subtype_sections_path, :method => "post" do
      assert_select "input#boat_subtype_section_name", :name => "boat_subtype_section[name]"
      assert_select "input#boat_subtype_section_boat_type_id", :name => "boat_subtype_section[boat_type_id]"
    end
  end
end
