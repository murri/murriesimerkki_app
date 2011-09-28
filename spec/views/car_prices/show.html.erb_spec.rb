require 'spec_helper'

describe "car_prices/show.html.erb" do
  before(:each) do
    @car_price = assign(:car_price, stub_model(CarPrice,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
