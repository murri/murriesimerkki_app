require 'spec_helper'

describe "caravan_total_owners/edit.html.erb" do
  before(:each) do
    @caravan_total_owner = assign(:caravan_total_owner, stub_model(CaravanTotalOwner,
      :name => "MyString"
    ))
  end

  it "renders the edit caravan_total_owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_total_owners_path(@caravan_total_owner), :method => "post" do
      assert_select "input#caravan_total_owner_name", :name => "caravan_total_owner[name]"
    end
  end
end
