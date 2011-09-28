require 'spec_helper'

describe "boat_user_names/show.html.erb" do
  before(:each) do
    @boat_user_name = assign(:boat_user_name, stub_model(BoatUserName,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
