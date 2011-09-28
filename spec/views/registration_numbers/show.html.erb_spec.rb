require 'spec_helper'

describe "registration_numbers/show.html.erb" do
  before(:each) do
    @registration_number = assign(:registration_number, stub_model(RegistrationNumber,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
