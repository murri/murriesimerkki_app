require 'spec_helper'

describe "gearbox_types/edit.html.erb" do
  before(:each) do
    @gearbox_type = assign(:gearbox_type, stub_model(GearboxType,
      :name => "MyString"
    ))
  end

  it "renders the edit gearbox_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gearbox_types_path(@gearbox_type), :method => "post" do
      assert_select "input#gearbox_type_name", :name => "gearbox_type[name]"
    end
  end
end
