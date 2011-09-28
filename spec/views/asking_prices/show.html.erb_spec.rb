require 'spec_helper'

describe "asking_prices/show.html.erb" do
  before(:each) do
    @asking_price = assign(:asking_price, stub_model(AskingPrice,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
