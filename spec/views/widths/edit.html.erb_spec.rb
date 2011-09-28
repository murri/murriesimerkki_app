require 'spec_helper'

describe "widths/edit.html.erb" do
  before(:each) do
    @width = assign(:width, stub_model(Width,
      :name => "MyString"
    ))
  end

  it "renders the edit width form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => widths_path(@width), :method => "post" do
      assert_select "input#width_name", :name => "width[name]"
    end
  end
end
