require 'spec_helper'

describe "caravan_asking_prices/show.html.erb" do
  before(:each) do
    @caravan_asking_price = assign(:caravan_asking_price, stub_model(CaravanAskingPrice,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
