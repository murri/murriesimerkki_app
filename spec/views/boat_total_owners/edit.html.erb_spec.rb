require 'spec_helper'

describe "boat_total_owners/edit.html.erb" do
  before(:each) do
    @boat_total_owner = assign(:boat_total_owner, stub_model(BoatTotalOwner,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_total_owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_total_owners_path(@boat_total_owner), :method => "post" do
      assert_select "input#boat_total_owner_name", :name => "boat_total_owner[name]"
    end
  end
end
