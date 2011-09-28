require 'spec_helper'

describe "asking_prices/edit.html.erb" do
  before(:each) do
    @asking_price = assign(:asking_price, stub_model(AskingPrice,
      :name => "MyString"
    ))
  end

  it "renders the edit asking_price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => asking_prices_path(@asking_price), :method => "post" do
      assert_select "input#asking_price_name", :name => "asking_price[name]"
    end
  end
end
