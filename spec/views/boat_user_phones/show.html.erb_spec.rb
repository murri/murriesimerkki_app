require 'spec_helper'

describe "boat_user_phones/show.html.erb" do
  before(:each) do
    @boat_user_phone = assign(:boat_user_phone, stub_model(BoatUserPhone,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
