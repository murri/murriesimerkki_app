require 'spec_helper'

describe "machine_mileages/new.html.erb" do
  before(:each) do
    assign(:machine_mileage, stub_model(MachineMileage,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new machine_mileage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_mileages_path, :method => "post" do
      assert_select "input#machine_mileage_name", :name => "machine_mileage[name]"
    end
  end
end
