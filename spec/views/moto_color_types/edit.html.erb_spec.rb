require 'spec_helper'

describe "moto_color_types/edit.html.erb" do
  before(:each) do
    @moto_color_type = assign(:moto_color_type, stub_model(MotoColorType,
      :name => "MyString"
    ))
  end

  it "renders the edit moto_color_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_color_types_path(@moto_color_type), :method => "post" do
      assert_select "input#moto_color_type_name", :name => "moto_color_type[name]"
    end
  end
end
