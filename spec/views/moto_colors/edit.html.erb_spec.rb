require 'spec_helper'

describe "moto_colors/edit.html.erb" do
  before(:each) do
    @moto_color = assign(:moto_color, stub_model(MotoColor,
      :name => "MyString"
    ))
  end

  it "renders the edit moto_color form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_colors_path(@moto_color), :method => "post" do
      assert_select "input#moto_color_name", :name => "moto_color[name]"
    end
  end
end
