require 'spec_helper'

describe "sub_cars/new.html.erb" do
  before(:each) do
    assign(:sub_car, stub_model(SubCar,
      :name => "MyString",
      :car_id => 1
    ).as_new_record)
  end

  it "renders new sub_car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sub_cars_path, :method => "post" do
      assert_select "input#sub_car_name", :name => "sub_car[name]"
      assert_select "input#sub_car_car_id", :name => "sub_car[car_id]"
    end
  end
end
