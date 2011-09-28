require 'spec_helper'

describe "model_sections/edit.html.erb" do
  before(:each) do
    @model_section = assign(:model_section, stub_model(ModelSection,
      :name => "MyString",
      :make_id => 1
    ))
  end

  it "renders the edit model_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => model_sections_path(@model_section), :method => "post" do
      assert_select "input#model_section_name", :name => "model_section[name]"
      assert_select "input#model_section_make_id", :name => "model_section[make_id]"
    end
  end
end
