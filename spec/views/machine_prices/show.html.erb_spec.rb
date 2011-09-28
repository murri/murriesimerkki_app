require 'spec_helper'

describe "machine_prices/show.html.erb" do
  before(:each) do
    @machine_price = assign(:machine_price, stub_model(MachinePrice,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
