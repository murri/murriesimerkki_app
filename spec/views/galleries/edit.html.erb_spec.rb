require 'spec_helper'

describe "galleries/edit.html.erb" do
  before(:each) do
    @gallery = assign(:gallery, stub_model(Gallery,
      :name => "MyString",
      :section_id => 1,
      :sub_section_id => 1
    ))
  end

  it "renders the edit gallery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => galleries_path(@gallery), :method => "post" do
      assert_select "input#gallery_name", :name => "gallery[name]"
      assert_select "input#gallery_section_id", :name => "gallery[section_id]"
      assert_select "input#gallery_sub_section_id", :name => "gallery[sub_section_id]"
    end
  end
end
