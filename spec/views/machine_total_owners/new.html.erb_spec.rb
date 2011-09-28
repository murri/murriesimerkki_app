require 'spec_helper'

describe "machine_total_owners/new.html.erb" do
  before(:each) do
    assign(:machine_total_owner, stub_model(MachineTotalOwner,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new machine_total_owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_total_owners_path, :method => "post" do
      assert_select "input#machine_total_owner_name", :name => "machine_total_owner[name]"
    end
  end
end
