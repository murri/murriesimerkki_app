require 'spec_helper'

describe "heights/new.html.erb" do
  before(:each) do
    assign(:height, stub_model(Height,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new height form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => heights_path, :method => "post" do
      assert_select "input#height_name", :name => "height[name]"
    end
  end
end
