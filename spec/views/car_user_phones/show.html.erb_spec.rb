require 'spec_helper'

describe "car_user_phones/show.html.erb" do
  before(:each) do
    @car_user_phone = assign(:car_user_phone, stub_model(CarUserPhone,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
