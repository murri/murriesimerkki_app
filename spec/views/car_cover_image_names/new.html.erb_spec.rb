require 'spec_helper'

describe "car_cover_image_names/new.html.erb" do
  before(:each) do
    assign(:car_cover_image_name, stub_model(CarCoverImageName,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_cover_image_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_cover_image_names_path, :method => "post" do
      assert_select "input#car_cover_image_name_name", :name => "car_cover_image_name[name]"
    end
  end
end
