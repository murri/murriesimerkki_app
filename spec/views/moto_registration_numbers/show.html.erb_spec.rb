require 'spec_helper'

describe "moto_registration_numbers/show.html.erb" do
  before(:each) do
    @moto_registration_number = assign(:moto_registration_number, stub_model(MotoRegistrationNumber,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
