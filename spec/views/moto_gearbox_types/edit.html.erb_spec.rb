require 'spec_helper'

describe "moto_gearbox_types/edit.html.erb" do
  before(:each) do
    @moto_gearbox_type = assign(:moto_gearbox_type, stub_model(MotoGearboxType,
      :name => "MyString"
    ))
  end

  it "renders the edit moto_gearbox_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_gearbox_types_path(@moto_gearbox_type), :method => "post" do
      assert_select "input#moto_gearbox_type_name", :name => "moto_gearbox_type[name]"
    end
  end
end
