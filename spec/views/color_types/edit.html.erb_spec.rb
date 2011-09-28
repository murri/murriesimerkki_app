require 'spec_helper'

describe "color_types/edit.html.erb" do
  before(:each) do
    @color_type = assign(:color_type, stub_model(ColorType,
      :name => "MyString"
    ))
  end

  it "renders the edit color_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => color_types_path(@color_type), :method => "post" do
      assert_select "input#color_type_name", :name => "color_type[name]"
    end
  end
end
