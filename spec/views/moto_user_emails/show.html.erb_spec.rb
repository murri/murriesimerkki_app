require 'spec_helper'

describe "moto_user_emails/show.html.erb" do
  before(:each) do
    @moto_user_email = assign(:moto_user_email, stub_model(MotoUserEmail,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
