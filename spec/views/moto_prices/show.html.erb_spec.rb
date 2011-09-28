require 'spec_helper'

describe "moto_prices/show.html.erb" do
  before(:each) do
    @moto_price = assign(:moto_price, stub_model(MotoPrice,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
