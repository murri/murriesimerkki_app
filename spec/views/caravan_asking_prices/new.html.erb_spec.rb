require 'spec_helper'

describe "caravan_asking_prices/new.html.erb" do
  before(:each) do
    assign(:caravan_asking_price, stub_model(CaravanAskingPrice,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new caravan_asking_price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_asking_prices_path, :method => "post" do
      assert_select "input#caravan_asking_price_name", :name => "caravan_asking_price[name]"
    end
  end
end
