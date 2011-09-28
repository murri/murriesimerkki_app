require 'spec_helper'

describe "machine_prices/edit.html.erb" do
  before(:each) do
    @machine_price = assign(:machine_price, stub_model(MachinePrice,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_prices_path(@machine_price), :method => "post" do
      assert_select "input#machine_price_name", :name => "machine_price[name]"
    end
  end
end
