require 'spec_helper'

describe "boat_widths/edit.html.erb" do
  before(:each) do
    @boat_width = assign(:boat_width, stub_model(BoatWidth,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_width form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_widths_path(@boat_width), :method => "post" do
      assert_select "input#boat_width_name", :name => "boat_width[name]"
    end
  end
end
