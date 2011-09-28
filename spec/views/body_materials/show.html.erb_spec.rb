require 'spec_helper'

describe "body_materials/show.html.erb" do
  before(:each) do
    @body_material = assign(:body_material, stub_model(BodyMaterial,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
