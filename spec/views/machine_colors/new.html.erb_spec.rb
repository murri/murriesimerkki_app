require 'spec_helper'

describe "machine_colors/new.html.erb" do
  before(:each) do
    assign(:machine_color, stub_model(MachineColor,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new machine_color form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_colors_path, :method => "post" do
      assert_select "input#machine_color_name", :name => "machine_color[name]"
    end
  end
end
