require 'spec_helper'

describe "machine_types/edit.html.erb" do
  before(:each) do
    @machine_type = assign(:machine_type, stub_model(MachineType,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_types_path(@machine_type), :method => "post" do
      assert_select "input#machine_type_name", :name => "machine_type[name]"
    end
  end
end
