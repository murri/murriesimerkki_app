require 'spec_helper'

describe "boat_body_materials/edit.html.erb" do
  before(:each) do
    @boat_body_material = assign(:boat_body_material, stub_model(BoatBodyMaterial,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_body_material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_body_materials_path(@boat_body_material), :method => "post" do
      assert_select "input#boat_body_material_name", :name => "boat_body_material[name]"
    end
  end
end
