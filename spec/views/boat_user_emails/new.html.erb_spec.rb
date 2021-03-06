require 'spec_helper'

describe "boat_user_emails/new.html.erb" do
  before(:each) do
    assign(:boat_user_email, stub_model(BoatUserEmail,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boat_user_email form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_user_emails_path, :method => "post" do
      assert_select "input#boat_user_email_name", :name => "boat_user_email[name]"
    end
  end
end
