require 'spec_helper'

describe "machine_color_types/edit.html.erb" do
  before(:each) do
    @machine_color_type = assign(:machine_color_type, stub_model(MachineColorType,
      :name => "MyString",
      :Machine_color_id => 1
    ))
  end

  it "renders the edit machine_color_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_color_types_path(@machine_color_type), :method => "post" do
      assert_select "input#machine_color_type_name", :name => "machine_color_type[name]"
      assert_select "input#machine_color_type_Machine_color_id", :name => "machine_color_type[Machine_color_id]"
    end
  end
end
