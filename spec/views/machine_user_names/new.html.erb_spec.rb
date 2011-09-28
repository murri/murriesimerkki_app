require 'spec_helper'

describe "machine_user_names/new.html.erb" do
  before(:each) do
    assign(:machine_user_name, stub_model(MachineUserName,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new machine_user_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_user_names_path, :method => "post" do
      assert_select "input#machine_user_name_name", :name => "machine_user_name[name]"
    end
  end
end
