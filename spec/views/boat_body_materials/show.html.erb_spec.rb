require 'spec_helper'

describe "boat_body_materials/show.html.erb" do
  before(:each) do
    @boat_body_material = assign(:boat_body_material, stub_model(BoatBodyMaterial,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
