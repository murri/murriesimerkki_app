require 'spec_helper'

describe "caravan_cover_image_names/edit.html.erb" do
  before(:each) do
    @caravan_cover_image_name = assign(:caravan_cover_image_name, stub_model(CaravanCoverImageName,
      :name => "MyString"
    ))
  end

  it "renders the edit caravan_cover_image_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_cover_image_names_path(@caravan_cover_image_name), :method => "post" do
      assert_select "input#caravan_cover_image_name_name", :name => "caravan_cover_image_name[name]"
    end
  end
end
