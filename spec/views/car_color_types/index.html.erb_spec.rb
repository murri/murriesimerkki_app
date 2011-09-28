require 'spec_helper'

describe "car_color_types/index.html.erb" do
  before(:each) do
    assign(:car_color_types, [
      stub_model(CarColorType,
        :name => "Name"
      ),
      stub_model(CarColorType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of car_color_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
