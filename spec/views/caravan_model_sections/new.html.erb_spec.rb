require 'spec_helper'

describe "caravan_model_sections/new.html.erb" do
  before(:each) do
    assign(:caravan_model_section, stub_model(CaravanModelSection,
      :name => "MyString",
      :caravan_make_section_id => 1
    ).as_new_record)
  end

  it "renders new caravan_model_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_model_sections_path, :method => "post" do
      assert_select "input#caravan_model_section_name", :name => "caravan_model_section[name]"
      assert_select "input#caravan_model_section_caravan_make_section_id", :name => "caravan_model_section[caravan_make_section_id]"
    end
  end
end
