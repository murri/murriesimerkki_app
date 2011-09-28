require 'spec_helper'

describe "machine_make_sections/edit.html.erb" do
  before(:each) do
    @machine_make_section = assign(:machine_make_section, stub_model(MachineMakeSection,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_make_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_make_sections_path(@machine_make_section), :method => "post" do
      assert_select "input#machine_make_section_name", :name => "machine_make_section[name]"
    end
  end
end
