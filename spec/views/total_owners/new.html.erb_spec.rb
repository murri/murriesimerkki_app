require 'spec_helper'

describe "total_owners/new.html.erb" do
  before(:each) do
    assign(:total_owner, stub_model(TotalOwner,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new total_owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => total_owners_path, :method => "post" do
      assert_select "input#total_owner_name", :name => "total_owner[name]"
    end
  end
end
