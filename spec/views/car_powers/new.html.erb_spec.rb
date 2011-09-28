require 'spec_helper'

describe "car_powers/new.html.erb" do
  before(:each) do
    assign(:car_power, stub_model(CarPower,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_power form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_powers_path, :method => "post" do
      assert_select "input#car_power_name", :name => "car_power[name]"
    end
  end
end
