require 'spec_helper'

describe "car_user_phones/index.html.erb" do
  before(:each) do
    assign(:car_user_phones, [
      stub_model(CarUserPhone,
        :name => "Name"
      ),
      stub_model(CarUserPhone,
        :name => "Name"
      )
    ])
  end

  it "renders a list of car_user_phones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
