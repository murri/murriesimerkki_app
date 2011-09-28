require 'spec_helper'

describe "lengths/new.html.erb" do
  before(:each) do
    assign(:length, stub_model(Length,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new length form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lengths_path, :method => "post" do
      assert_select "input#length_name", :name => "length[name]"
    end
  end
end
