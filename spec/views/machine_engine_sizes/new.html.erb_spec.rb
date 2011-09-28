require 'spec_helper'

describe "machine_engine_sizes/new.html.erb" do
  before(:each) do
    assign(:machine_engine_size, stub_model(MachineEngineSize,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new machine_engine_size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_engine_sizes_path, :method => "post" do
      assert_select "input#machine_engine_size_name", :name => "machine_engine_size[name]"
    end
  end
end
