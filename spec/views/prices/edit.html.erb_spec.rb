require 'spec_helper'

describe "prices/edit.html.erb" do
  before(:each) do
    @price = assign(:price, stub_model(Price,
      :name => "MyString"
    ))
  end

  it "renders the edit price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prices_path(@price), :method => "post" do
      assert_select "input#price_name", :name => "price[name]"
    end
  end
end
