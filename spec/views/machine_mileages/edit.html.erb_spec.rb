require 'spec_helper'

describe "machine_mileages/edit.html.erb" do
  before(:each) do
    @machine_mileage = assign(:machine_mileage, stub_model(MachineMileage,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_mileage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_mileages_path(@machine_mileage), :method => "post" do
      assert_select "input#machine_mileage_name", :name => "machine_mileage[name]"
    end
  end
end
