require 'spec_helper'

describe "car_prices/new.html.erb" do
  before(:each) do
    assign(:car_price, stub_model(CarPrice,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_prices_path, :method => "post" do
      assert_select "input#car_price_name", :name => "car_price[name]"
    end
  end
end
