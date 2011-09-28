require 'spec_helper'

describe "caravan_dead_weights/show.html.erb" do
  before(:each) do
    @caravan_dead_weight = assign(:caravan_dead_weight, stub_model(CaravanDeadWeight,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
