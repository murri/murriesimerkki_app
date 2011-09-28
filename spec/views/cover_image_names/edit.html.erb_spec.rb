require 'spec_helper'

describe "cover_image_names/edit.html.erb" do
  before(:each) do
    @cover_image_name = assign(:cover_image_name, stub_model(CoverImageName,
      :name => "MyString"
    ))
  end

  it "renders the edit cover_image_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cover_image_names_path(@cover_image_name), :method => "post" do
      assert_select "input#cover_image_name_name", :name => "cover_image_name[name]"
    end
  end
end
