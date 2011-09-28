require 'spec_helper'

describe "body_materials/edit.html.erb" do
  before(:each) do
    @body_material = assign(:body_material, stub_model(BodyMaterial,
      :name => "MyString"
    ))
  end

  it "renders the edit body_material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => body_materials_path(@body_material), :method => "post" do
      assert_select "input#body_material_name", :name => "body_material[name]"
    end
  end
end
