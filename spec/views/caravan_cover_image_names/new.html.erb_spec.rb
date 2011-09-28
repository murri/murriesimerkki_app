require 'spec_helper'

describe "caravan_cover_image_names/new.html.erb" do
  before(:each) do
    assign(:caravan_cover_image_name, stub_model(CaravanCoverImageName,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new caravan_cover_image_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_cover_image_names_path, :method => "post" do
      assert_select "input#caravan_cover_image_name_name", :name => "caravan_cover_image_name[name]"
    end
  end
end
