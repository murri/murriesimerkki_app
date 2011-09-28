require 'spec_helper'

describe "car_prices/edit.html.erb" do
  before(:each) do
    @car_price = assign(:car_price, stub_model(CarPrice,
      :name => "MyString"
    ))
  end

  it "renders the edit car_price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_prices_path(@car_price), :method => "post" do
      assert_select "input#car_price_name", :name => "car_price[name]"
    end
  end
end
