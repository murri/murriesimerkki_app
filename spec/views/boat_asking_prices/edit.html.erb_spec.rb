require 'spec_helper'

describe "boat_asking_prices/edit.html.erb" do
  before(:each) do
    @boat_asking_price = assign(:boat_asking_price, stub_model(BoatAskingPrice,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_asking_price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_asking_prices_path(@boat_asking_price), :method => "post" do
      assert_select "input#boat_asking_price_name", :name => "boat_asking_price[name]"
    end
  end
end
