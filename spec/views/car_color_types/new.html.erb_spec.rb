require 'spec_helper'

describe "car_color_types/new.html.erb" do
  before(:each) do
    assign(:car_color_type, stub_model(CarColorType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_color_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_color_types_path, :method => "post" do
      assert_select "input#car_color_type_name", :name => "car_color_type[name]"
    end
  end
end
