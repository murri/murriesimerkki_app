require 'spec_helper'

describe "machine_town_types/new.html.erb" do
  before(:each) do
    assign(:machine_town_type, stub_model(MachineTownType,
      :name => "MyString",
      :machine_domicile_type_id => 1
    ).as_new_record)
  end

  it "renders new machine_town_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_town_types_path, :method => "post" do
      assert_select "input#machine_town_type_name", :name => "machine_town_type[name]"
      assert_select "input#machine_town_type_machine_domicile_type_id", :name => "machine_town_type[machine_domicile_type_id]"
    end
  end
end
