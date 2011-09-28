require 'spec_helper'

describe "machine_gross_weights/edit.html.erb" do
  before(:each) do
    @machine_gross_weight = assign(:machine_gross_weight, stub_model(MachineGrossWeight,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_gross_weight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_gross_weights_path(@machine_gross_weight), :method => "post" do
      assert_select "input#machine_gross_weight_name", :name => "machine_gross_weight[name]"
    end
  end
end
