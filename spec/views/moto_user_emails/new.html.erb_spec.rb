require 'spec_helper'

describe "moto_user_emails/new.html.erb" do
  before(:each) do
    assign(:moto_user_email, stub_model(MotoUserEmail,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new moto_user_email form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_user_emails_path, :method => "post" do
      assert_select "input#moto_user_email_name", :name => "moto_user_email[name]"
    end
  end
end
