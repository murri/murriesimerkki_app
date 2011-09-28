require 'spec_helper'

describe "machine_user_phones/show.html.erb" do
  before(:each) do
    @machine_user_phone = assign(:machine_user_phone, stub_model(MachineUserPhone,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
