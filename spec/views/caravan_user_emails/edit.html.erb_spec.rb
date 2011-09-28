require 'spec_helper'

describe "caravan_user_emails/edit.html.erb" do
  before(:each) do
    @caravan_user_email = assign(:caravan_user_email, stub_model(CaravanUserEmail,
      :name => "MyString"
    ))
  end

  it "renders the edit caravan_user_email form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_user_emails_path(@caravan_user_email), :method => "post" do
      assert_select "input#caravan_user_email_name", :name => "caravan_user_email[name]"
    end
  end
end
