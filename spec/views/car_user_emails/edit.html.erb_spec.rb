require 'spec_helper'

describe "car_user_emails/edit.html.erb" do
  before(:each) do
    @car_user_email = assign(:car_user_email, stub_model(CarUserEmail,
      :name => "MyString"
    ))
  end

  it "renders the edit car_user_email form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_user_emails_path(@car_user_email), :method => "post" do
      assert_select "input#car_user_email_name", :name => "car_user_email[name]"
    end
  end
end
