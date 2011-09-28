require 'spec_helper'

describe "caravan_informations/show.html.erb" do
  before(:each) do
    @caravan_information = assign(:caravan_information, stub_model(CaravanInformation,
      :name => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
