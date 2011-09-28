require 'spec_helper'

describe "car_domicile_types/index.html.erb" do
  before(:each) do
    assign(:car_domicile_types, [
      stub_model(CarDomicileType,
        :name => "Name"
      ),
      stub_model(CarDomicileType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of car_domicile_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
