require 'spec_helper'

describe "moto_prices/new.html.erb" do
  before(:each) do
    assign(:moto_price, stub_model(MotoPrice,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new moto_price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_prices_path, :method => "post" do
      assert_select "input#moto_price_name", :name => "moto_price[name]"
    end
  end
end
