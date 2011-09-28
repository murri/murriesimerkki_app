require 'spec_helper'

describe "car_colors/new.html.erb" do
  before(:each) do
    assign(:car_color, stub_model(CarColor,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_color form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_colors_path, :method => "post" do
      assert_select "input#car_color_name", :name => "car_color[name]"
    end
  end
end
