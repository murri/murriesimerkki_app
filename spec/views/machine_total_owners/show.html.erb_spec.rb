require 'spec_helper'

describe "machine_total_owners/show.html.erb" do
  before(:each) do
    @machine_total_owner = assign(:machine_total_owner, stub_model(MachineTotalOwner,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
