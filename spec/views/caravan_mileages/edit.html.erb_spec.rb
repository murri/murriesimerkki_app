require 'spec_helper'

describe "caravan_mileages/edit.html.erb" do
  before(:each) do
    @caravan_mileage = assign(:caravan_mileage, stub_model(CaravanMileage,
      :name => "MyString"
    ))
  end

  it "renders the edit caravan_mileage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_mileages_path(@caravan_mileage), :method => "post" do
      assert_select "input#caravan_mileage_name", :name => "caravan_mileage[name]"
    end
  end
end
