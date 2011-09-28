require 'spec_helper'

describe "car_powers/edit.html.erb" do
  before(:each) do
    @car_power = assign(:car_power, stub_model(CarPower,
      :name => "MyString"
    ))
  end

  it "renders the edit car_power form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_powers_path(@car_power), :method => "post" do
      assert_select "input#car_power_name", :name => "car_power[name]"
    end
  end
end
