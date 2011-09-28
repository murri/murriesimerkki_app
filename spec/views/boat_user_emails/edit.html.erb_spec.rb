require 'spec_helper'

describe "boat_user_emails/edit.html.erb" do
  before(:each) do
    @boat_user_email = assign(:boat_user_email, stub_model(BoatUserEmail,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_user_email form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_user_emails_path(@boat_user_email), :method => "post" do
      assert_select "input#boat_user_email_name", :name => "boat_user_email[name]"
    end
  end
end
