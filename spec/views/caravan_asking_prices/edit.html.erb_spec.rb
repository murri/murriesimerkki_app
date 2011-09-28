require 'spec_helper'

describe "caravan_asking_prices/edit.html.erb" do
  before(:each) do
    @caravan_asking_price = assign(:caravan_asking_price, stub_model(CaravanAskingPrice,
      :name => "MyString"
    ))
  end

  it "renders the edit caravan_asking_price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_asking_prices_path(@caravan_asking_price), :method => "post" do
      assert_select "input#caravan_asking_price_name", :name => "caravan_asking_price[name]"
    end
  end
end
