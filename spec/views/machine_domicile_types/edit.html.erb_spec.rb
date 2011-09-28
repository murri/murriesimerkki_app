require 'spec_helper'

describe "machine_domicile_types/edit.html.erb" do
  before(:each) do
    @machine_domicile_type = assign(:machine_domicile_type, stub_model(MachineDomicileType,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_domicile_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_domicile_types_path(@machine_domicile_type), :method => "post" do
      assert_select "input#machine_domicile_type_name", :name => "machine_domicile_type[name]"
    end
  end
end
