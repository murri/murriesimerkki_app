require 'spec_helper'

describe "moto_user_emails/index.html.erb" do
  before(:each) do
    assign(:moto_user_emails, [
      stub_model(MotoUserEmail,
        :name => "Name"
      ),
      stub_model(MotoUserEmail,
        :name => "Name"
      )
    ])
  end

  it "renders a list of moto_user_emails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
