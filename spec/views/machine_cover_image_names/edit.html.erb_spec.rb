require 'spec_helper'

describe "machine_cover_image_names/edit.html.erb" do
  before(:each) do
    @machine_cover_image_name = assign(:machine_cover_image_name, stub_model(MachineCoverImageName,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_cover_image_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_cover_image_names_path(@machine_cover_image_name), :method => "post" do
      assert_select "input#machine_cover_image_name_name", :name => "machine_cover_image_name[name]"
    end
  end
end
