require 'spec_helper'

describe "cars/new.html.erb" do
  before(:each) do
    assign(:car, stub_model(Car,
      :name => "MyString",
      :type_id => 1,
      :sub_type_id => 1
    ).as_new_record)
  end

  it "renders new car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cars_path, :method => "post" do
      assert_select "input#car_name", :name => "car[name]"
      assert_select "input#car_type_id", :name => "car[type_id]"
      assert_select "input#car_sub_type_id", :name => "car[sub_type_id]"
    end
  end
end
