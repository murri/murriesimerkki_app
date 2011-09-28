require 'spec_helper'

describe "cars/edit.html.erb" do
  before(:each) do
    @car = assign(:car, stub_model(Car,
      :name => "MyString",
      :type_id => 1,
      :sub_type_id => 1
    ))
  end

  it "renders the edit car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cars_path(@car), :method => "post" do
      assert_select "input#car_name", :name => "car[name]"
      assert_select "input#car_type_id", :name => "car[type_id]"
      assert_select "input#car_sub_type_id", :name => "car[sub_type_id]"
    end
  end
end
