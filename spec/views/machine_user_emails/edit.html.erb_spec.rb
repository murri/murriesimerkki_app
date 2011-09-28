require 'spec_helper'

describe "machine_user_emails/edit.html.erb" do
  before(:each) do
    @machine_user_email = assign(:machine_user_email, stub_model(MachineUserEmail,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_user_email form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_user_emails_path(@machine_user_email), :method => "post" do
      assert_select "input#machine_user_email_name", :name => "machine_user_email[name]"
    end
  end
end
