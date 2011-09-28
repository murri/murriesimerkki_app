require 'spec_helper'

describe "moto_mileages/index.html.erb" do
  before(:each) do
    assign(:moto_mileages, [
      stub_model(MotoMileage,
        :name => "Name"
      ),
      stub_model(MotoMileage,
        :name => "Name"
      )
    ])
  end

  it "renders a list of moto_mileages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
