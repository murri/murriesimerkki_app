require 'spec_helper'

describe "machine_total_owners/edit.html.erb" do
  before(:each) do
    @machine_total_owner = assign(:machine_total_owner, stub_model(MachineTotalOwner,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_total_owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_total_owners_path(@machine_total_owner), :method => "post" do
      assert_select "input#machine_total_owner_name", :name => "machine_total_owner[name]"
    end
  end
end
