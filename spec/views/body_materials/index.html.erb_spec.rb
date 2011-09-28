require 'spec_helper'

describe "body_materials/index.html.erb" do
  before(:each) do
    assign(:body_materials, [
      stub_model(BodyMaterial,
        :name => "Name"
      ),
      stub_model(BodyMaterial,
        :name => "Name"
      )
    ])
  end

  it "renders a list of body_materials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
