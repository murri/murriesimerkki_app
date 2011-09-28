require 'spec_helper'

describe "caravan_user_phones/new.html.erb" do
  before(:each) do
    assign(:caravan_user_phone, stub_model(CaravanUserPhone,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new caravan_user_phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_user_phones_path, :method => "post" do
      assert_select "input#caravan_user_phone_name", :name => "caravan_user_phone[name]"
    end
  end
end
