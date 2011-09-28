require 'spec_helper'

describe "caravan_user_phones/edit.html.erb" do
  before(:each) do
    @caravan_user_phone = assign(:caravan_user_phone, stub_model(CaravanUserPhone,
      :name => "MyString"
    ))
  end

  it "renders the edit caravan_user_phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_user_phones_path(@caravan_user_phone), :method => "post" do
      assert_select "input#caravan_user_phone_name", :name => "caravan_user_phone[name]"
    end
  end
end
