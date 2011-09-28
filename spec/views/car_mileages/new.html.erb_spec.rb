require 'spec_helper'

describe "car_mileages/new.html.erb" do
  before(:each) do
    assign(:car_mileage, stub_model(CarMileage,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_mileage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_mileages_path, :method => "post" do
      assert_select "input#car_mileage_name", :name => "car_mileage[name]"
    end
  end
end
