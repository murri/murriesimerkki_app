require 'spec_helper'

describe "car_total_owners/edit.html.erb" do
  before(:each) do
    @car_total_owner = assign(:car_total_owner, stub_model(CarTotalOwner,
      :name => "MyString"
    ))
  end

  it "renders the edit car_total_owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_total_owners_path(@car_total_owner), :method => "post" do
      assert_select "input#car_total_owner_name", :name => "car_total_owner[name]"
    end
  end
end
