require 'spec_helper'

describe "machine_types/new.html.erb" do
  before(:each) do
    assign(:machine_type, stub_model(MachineType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new machine_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_types_path, :method => "post" do
      assert_select "input#machine_type_name", :name => "machine_type[name]"
    end
  end
end
