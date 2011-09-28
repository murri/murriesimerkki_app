require 'spec_helper'

describe "boat_body_materials/new.html.erb" do
  before(:each) do
    assign(:boat_body_material, stub_model(BoatBodyMaterial,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boat_body_material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_body_materials_path, :method => "post" do
      assert_select "input#boat_body_material_name", :name => "boat_body_material[name]"
    end
  end
end
