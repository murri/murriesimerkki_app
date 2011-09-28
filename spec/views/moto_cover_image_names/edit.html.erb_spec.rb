require 'spec_helper'

describe "moto_cover_image_names/edit.html.erb" do
  before(:each) do
    @moto_cover_image_name = assign(:moto_cover_image_name, stub_model(MotoCoverImageName,
      :name => "MyString"
    ))
  end

  it "renders the edit moto_cover_image_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_cover_image_names_path(@moto_cover_image_name), :method => "post" do
      assert_select "input#moto_cover_image_name_name", :name => "moto_cover_image_name[name]"
    end
  end
end
