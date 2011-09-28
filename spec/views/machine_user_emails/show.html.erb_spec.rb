require 'spec_helper'

describe "machine_user_emails/show.html.erb" do
  before(:each) do
    @machine_user_email = assign(:machine_user_email, stub_model(MachineUserEmail,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
