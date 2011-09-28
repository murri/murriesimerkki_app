require 'spec_helper'

describe "boat_widths/new.html.erb" do
  before(:each) do
    assign(:boat_width, stub_model(BoatWidth,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boat_width form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_widths_path, :method => "post" do
      assert_select "input#boat_width_name", :name => "boat_width[name]"
    end
  end
end
