require 'spec_helper'

describe "gearbox_types/new.html.erb" do
  before(:each) do
    assign(:gearbox_type, stub_model(GearboxType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new gearbox_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gearbox_types_path, :method => "post" do
      assert_select "input#gearbox_type_name", :name => "gearbox_type[name]"
    end
  end
end
