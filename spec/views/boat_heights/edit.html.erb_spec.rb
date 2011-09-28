require 'spec_helper'

describe "boat_heights/edit.html.erb" do
  before(:each) do
    @boat_height = assign(:boat_height, stub_model(BoatHeight,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_height form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_heights_path(@boat_height), :method => "post" do
      assert_select "input#boat_height_name", :name => "boat_height[name]"
    end
  end
end
