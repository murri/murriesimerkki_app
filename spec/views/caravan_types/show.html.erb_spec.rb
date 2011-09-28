require 'spec_helper'

describe "caravan_types/show.html.erb" do
  before(:each) do
    @caravan_type = assign(:caravan_type, stub_model(CaravanType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
