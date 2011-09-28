require 'spec_helper'

describe "asking_prices/new.html.erb" do
  before(:each) do
    assign(:asking_price, stub_model(AskingPrice,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new asking_price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => asking_prices_path, :method => "post" do
      assert_select "input#asking_price_name", :name => "asking_price[name]"
    end
  end
end
