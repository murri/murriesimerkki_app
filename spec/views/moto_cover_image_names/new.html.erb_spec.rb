require 'spec_helper'

describe "moto_cover_image_names/new.html.erb" do
  before(:each) do
    assign(:moto_cover_image_name, stub_model(MotoCoverImageName,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new moto_cover_image_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_cover_image_names_path, :method => "post" do
      assert_select "input#moto_cover_image_name_name", :name => "moto_cover_image_name[name]"
    end
  end
end
