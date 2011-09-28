require 'spec_helper'

describe "moto_gearbox_types/new.html.erb" do
  before(:each) do
    assign(:moto_gearbox_type, stub_model(MotoGearboxType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new moto_gearbox_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_gearbox_types_path, :method => "post" do
      assert_select "input#moto_gearbox_type_name", :name => "moto_gearbox_type[name]"
    end
  end
end
