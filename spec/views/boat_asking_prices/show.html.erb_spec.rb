require 'spec_helper'

describe "boat_asking_prices/show.html.erb" do
  before(:each) do
    @boat_asking_price = assign(:boat_asking_price, stub_model(BoatAskingPrice,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
