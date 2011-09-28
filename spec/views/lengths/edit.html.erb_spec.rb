require 'spec_helper'

describe "lengths/edit.html.erb" do
  before(:each) do
    @length = assign(:length, stub_model(Length,
      :name => "MyString"
    ))
  end

  it "renders the edit length form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lengths_path(@length), :method => "post" do
      assert_select "input#length_name", :name => "length[name]"
    end
  end
end
