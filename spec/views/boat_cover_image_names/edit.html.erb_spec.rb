require 'spec_helper'

describe "boat_cover_image_names/edit.html.erb" do
  before(:each) do
    @boat_cover_image_name = assign(:boat_cover_image_name, stub_model(BoatCoverImageName,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_cover_image_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_cover_image_names_path(@boat_cover_image_name), :method => "post" do
      assert_select "input#boat_cover_image_name_name", :name => "boat_cover_image_name[name]"
    end
  end
end
