require 'spec_helper'

describe "machine_prices/new.html.erb" do
  before(:each) do
    assign(:machine_price, stub_model(MachinePrice,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new machine_price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_prices_path, :method => "post" do
      assert_select "input#machine_price_name", :name => "machine_price[name]"
    end
  end
end
