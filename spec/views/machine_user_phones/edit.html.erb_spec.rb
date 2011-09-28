require 'spec_helper'

describe "machine_user_phones/edit.html.erb" do
  before(:each) do
    @machine_user_phone = assign(:machine_user_phone, stub_model(MachineUserPhone,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_user_phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_user_phones_path(@machine_user_phone), :method => "post" do
      assert_select "input#machine_user_phone_name", :name => "machine_user_phone[name]"
    end
  end
end
