require 'spec_helper'

describe "boat_colors/edit.html.erb" do
  before(:each) do
    @boat_color = assign(:boat_color, stub_model(BoatColor,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_color form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_colors_path(@boat_color), :method => "post" do
      assert_select "input#boat_color_name", :name => "boat_color[name]"
    end
  end
end
