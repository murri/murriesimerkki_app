require 'spec_helper'

describe "caravan_make_sections/new.html.erb" do
  before(:each) do
    assign(:caravan_make_section, stub_model(CaravanMakeSection,
      :name => "MyString",
      :caravan_type_id => 1
    ).as_new_record)
  end

  it "renders new caravan_make_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_make_sections_path, :method => "post" do
      assert_select "input#caravan_make_section_name", :name => "caravan_make_section[name]"
      assert_select "input#caravan_make_section_caravan_type_id", :name => "caravan_make_section[caravan_type_id]"
    end
  end
end
