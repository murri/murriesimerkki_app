require 'spec_helper'

describe "boat_domicile_types/show.html.erb" do
  before(:each) do
    @boat_domicile_type = assign(:boat_domicile_type, stub_model(BoatDomicileType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
