require 'spec_helper'

describe "caravan_model_sections/edit.html.erb" do
  before(:each) do
    @caravan_model_section = assign(:caravan_model_section, stub_model(CaravanModelSection,
      :name => "MyString",
      :caravan_make_section_id => 1
    ))
  end

  it "renders the edit caravan_model_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_model_sections_path(@caravan_model_section), :method => "post" do
      assert_select "input#caravan_model_section_name", :name => "caravan_model_section[name]"
      assert_select "input#caravan_model_section_caravan_make_section_id", :name => "caravan_model_section[caravan_make_section_id]"
    end
  end
end
