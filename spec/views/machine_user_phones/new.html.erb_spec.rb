require 'spec_helper'

describe "machine_user_phones/new.html.erb" do
  before(:each) do
    assign(:machine_user_phone, stub_model(MachineUserPhone,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new machine_user_phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_user_phones_path, :method => "post" do
      assert_select "input#machine_user_phone_name", :name => "machine_user_phone[name]"
    end
  end
end
