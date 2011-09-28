require 'spec_helper'

describe "prices/new.html.erb" do
  before(:each) do
    assign(:price, stub_model(Price,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prices_path, :method => "post" do
      assert_select "input#price_name", :name => "price[name]"
    end
  end
end
