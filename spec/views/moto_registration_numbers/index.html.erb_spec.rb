require 'spec_helper'

describe "moto_registration_numbers/index.html.erb" do
  before(:each) do
    assign(:moto_registration_numbers, [
      stub_model(MotoRegistrationNumber,
        :name => "Name"
      ),
      stub_model(MotoRegistrationNumber,
        :name => "Name"
      )
    ])
  end

  it "renders a list of moto_registration_numbers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
