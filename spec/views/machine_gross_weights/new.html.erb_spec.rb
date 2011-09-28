require 'spec_helper'

describe "machine_gross_weights/new.html.erb" do
  before(:each) do
    assign(:machine_gross_weight, stub_model(MachineGrossWeight,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new machine_gross_weight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_gross_weights_path, :method => "post" do
      assert_select "input#machine_gross_weight_name", :name => "machine_gross_weight[name]"
    end
  end
end
