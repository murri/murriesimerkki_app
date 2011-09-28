require 'spec_helper'

describe "moto_model_sections/edit.html.erb" do
  before(:each) do
    @moto_model_section = assign(:moto_model_section, stub_model(MotoModelSection,
      :name => "MyString",
      :make_id => 1
    ))
  end

  it "renders the edit moto_model_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_model_sections_path(@moto_model_section), :method => "post" do
      assert_select "input#moto_model_section_name", :name => "moto_model_section[name]"
      assert_select "input#moto_model_section_make_id", :name => "moto_model_section[make_id]"
    end
  end
end
