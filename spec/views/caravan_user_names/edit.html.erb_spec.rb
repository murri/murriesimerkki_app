require 'spec_helper'

describe "caravan_user_names/edit.html.erb" do
  before(:each) do
    @caravan_user_name = assign(:caravan_user_name, stub_model(CaravanUserName,
      :name => "MyString"
    ))
  end

  it "renders the edit caravan_user_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_user_names_path(@caravan_user_name), :method => "post" do
      assert_select "input#caravan_user_name_name", :name => "caravan_user_name[name]"
    end
  end
end
