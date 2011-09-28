require 'spec_helper'

describe "machine_town_types/edit.html.erb" do
  before(:each) do
    @machine_town_type = assign(:machine_town_type, stub_model(MachineTownType,
      :name => "MyString",
      :machine_domicile_type_id => 1
    ))
  end

  it "renders the edit machine_town_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_town_types_path(@machine_town_type), :method => "post" do
      assert_select "input#machine_town_type_name", :name => "machine_town_type[name]"
      assert_select "input#machine_town_type_machine_domicile_type_id", :name => "machine_town_type[machine_domicile_type_id]"
    end
  end
end
