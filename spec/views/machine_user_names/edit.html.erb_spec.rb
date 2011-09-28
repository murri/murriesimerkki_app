require 'spec_helper'

describe "machine_user_names/edit.html.erb" do
  before(:each) do
    @machine_user_name = assign(:machine_user_name, stub_model(MachineUserName,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_user_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_user_names_path(@machine_user_name), :method => "post" do
      assert_select "input#machine_user_name_name", :name => "machine_user_name[name]"
    end
  end
end
