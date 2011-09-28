require 'spec_helper'

describe "prices/show.html.erb" do
  before(:each) do
    @price = assign(:price, stub_model(Price,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
