require 'spec_helper'

describe "caravan_informations/index.html.erb" do
  before(:each) do
    assign(:caravan_informations, [
      stub_model(CaravanInformation,
        :name => "MyText"
      ),
      stub_model(CaravanInformation,
        :name => "MyText"
      )
    ])
  end

  it "renders a list of caravan_informations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
