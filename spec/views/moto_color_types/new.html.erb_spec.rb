require 'spec_helper'

describe "moto_color_types/new.html.erb" do
  before(:each) do
    assign(:moto_color_type, stub_model(MotoColorType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new moto_color_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_color_types_path, :method => "post" do
      assert_select "input#moto_color_type_name", :name => "moto_color_type[name]"
    end
  end
end
