require 'spec_helper'

describe "car_mileages/edit.html.erb" do
  before(:each) do
    @car_mileage = assign(:car_mileage, stub_model(CarMileage,
      :name => "MyString"
    ))
  end

  it "renders the edit car_mileage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_mileages_path(@car_mileage), :method => "post" do
      assert_select "input#car_mileage_name", :name => "car_mileage[name]"
    end
  end
end
