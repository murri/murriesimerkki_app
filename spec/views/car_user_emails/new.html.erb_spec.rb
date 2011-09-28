require 'spec_helper'

describe "car_user_emails/new.html.erb" do
  before(:each) do
    assign(:car_user_email, stub_model(CarUserEmail,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_user_email form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_user_emails_path, :method => "post" do
      assert_select "input#car_user_email_name", :name => "car_user_email[name]"
    end
  end
end
