require 'spec_helper'

describe "boat_total_owners/new.html.erb" do
  before(:each) do
    assign(:boat_total_owner, stub_model(BoatTotalOwner,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boat_total_owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_total_owners_path, :method => "post" do
      assert_select "input#boat_total_owner_name", :name => "boat_total_owner[name]"
    end
  end
end
