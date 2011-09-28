require 'spec_helper'

describe "car_colors/edit.html.erb" do
  before(:each) do
    @car_color = assign(:car_color, stub_model(CarColor,
      :name => "MyString"
    ))
  end

  it "renders the edit car_color form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_colors_path(@car_color), :method => "post" do
      assert_select "input#car_color_name", :name => "car_color[name]"
    end
  end
end
