require 'spec_helper'

describe "body_materials/new.html.erb" do
  before(:each) do
    assign(:body_material, stub_model(BodyMaterial,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new body_material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => body_materials_path, :method => "post" do
      assert_select "input#body_material_name", :name => "body_material[name]"
    end
  end
end
