require 'spec_helper'

describe "caravan_user_phones/show.html.erb" do
  before(:each) do
    @caravan_user_phone = assign(:caravan_user_phone, stub_model(CaravanUserPhone,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
