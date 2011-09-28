require 'spec_helper'

describe "boat_models/show.html.erb" do
  before(:each) do
    @boat_model = assign(:boat_model, stub_model(BoatModel,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
