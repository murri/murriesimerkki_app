require 'spec_helper'

describe "boat_user_emails/index.html.erb" do
  before(:each) do
    assign(:boat_user_emails, [
      stub_model(BoatUserEmail,
        :name => "Name"
      ),
      stub_model(BoatUserEmail,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_user_emails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
