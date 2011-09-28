require 'spec_helper'

describe "moto_user_emails/edit.html.erb" do
  before(:each) do
    @moto_user_email = assign(:moto_user_email, stub_model(MotoUserEmail,
      :name => "MyString"
    ))
  end

  it "renders the edit moto_user_email form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_user_emails_path(@moto_user_email), :method => "post" do
      assert_select "input#moto_user_email_name", :name => "moto_user_email[name]"
    end
  end
end
