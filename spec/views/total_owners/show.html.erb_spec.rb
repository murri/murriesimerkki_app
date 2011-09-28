require 'spec_helper'

describe "total_owners/show.html.erb" do
  before(:each) do
    @total_owner = assign(:total_owner, stub_model(TotalOwner,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
