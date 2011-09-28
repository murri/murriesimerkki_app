require 'spec_helper'

describe "moto_user_phones/edit.html.erb" do
  before(:each) do
    @moto_user_phone = assign(:moto_user_phone, stub_model(MotoUserPhone,
      :name => "MyString"
    ))
  end

  it "renders the edit moto_user_phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_user_phones_path(@moto_user_phone), :method => "post" do
      assert_select "input#moto_user_phone_name", :name => "moto_user_phone[name]"
    end
  end
end
