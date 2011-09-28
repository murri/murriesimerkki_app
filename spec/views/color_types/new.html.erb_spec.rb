require 'spec_helper'

describe "color_types/new.html.erb" do
  before(:each) do
    assign(:color_type, stub_model(ColorType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new color_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => color_types_path, :method => "post" do
      assert_select "input#color_type_name", :name => "color_type[name]"
    end
  end
end
