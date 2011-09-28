require 'spec_helper'

describe "total_owners/edit.html.erb" do
  before(:each) do
    @total_owner = assign(:total_owner, stub_model(TotalOwner,
      :name => "MyString"
    ))
  end

  it "renders the edit total_owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => total_owners_path(@total_owner), :method => "post" do
      assert_select "input#total_owner_name", :name => "total_owner[name]"
    end
  end
end
