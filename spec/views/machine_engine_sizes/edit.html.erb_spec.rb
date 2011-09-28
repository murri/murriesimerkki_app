require 'spec_helper'

describe "machine_engine_sizes/edit.html.erb" do
  before(:each) do
    @machine_engine_size = assign(:machine_engine_size, stub_model(MachineEngineSize,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_engine_size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_engine_sizes_path(@machine_engine_size), :method => "post" do
      assert_select "input#machine_engine_size_name", :name => "machine_engine_size[name]"
    end
  end
end
