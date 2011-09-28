require 'spec_helper'

describe "boat_heights/new.html.erb" do
  before(:each) do
    assign(:boat_height, stub_model(BoatHeight,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boat_height form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_heights_path, :method => "post" do
      assert_select "input#boat_height_name", :name => "boat_height[name]"
    end
  end
end
