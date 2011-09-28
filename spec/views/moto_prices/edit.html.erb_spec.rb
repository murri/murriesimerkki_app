require 'spec_helper'

describe "moto_prices/edit.html.erb" do
  before(:each) do
    @moto_price = assign(:moto_price, stub_model(MotoPrice,
      :name => "MyString"
    ))
  end

  it "renders the edit moto_price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_prices_path(@moto_price), :method => "post" do
      assert_select "input#moto_price_name", :name => "moto_price[name]"
    end
  end
end
