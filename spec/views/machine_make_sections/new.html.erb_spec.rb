require 'spec_helper'

describe "machine_make_sections/new.html.erb" do
  before(:each) do
    assign(:machine_make_section, stub_model(MachineMakeSection,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new machine_make_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_make_sections_path, :method => "post" do
      assert_select "input#machine_make_section_name", :name => "machine_make_section[name]"
    end
  end
end
