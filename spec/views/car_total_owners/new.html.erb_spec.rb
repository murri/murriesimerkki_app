require 'spec_helper'

describe "car_total_owners/new.html.erb" do
  before(:each) do
    assign(:car_total_owner, stub_model(CarTotalOwner,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_total_owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_total_owners_path, :method => "post" do
      assert_select "input#car_total_owner_name", :name => "car_total_owner[name]"
    end
  end
end
