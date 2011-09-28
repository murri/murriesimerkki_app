require 'spec_helper'

describe "car_color_types/edit.html.erb" do
  before(:each) do
    @car_color_type = assign(:car_color_type, stub_model(CarColorType,
      :name => "MyString"
    ))
  end

  it "renders the edit car_color_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_color_types_path(@car_color_type), :method => "post" do
      assert_select "input#car_color_type_name", :name => "car_color_type[name]"
    end
  end
end
