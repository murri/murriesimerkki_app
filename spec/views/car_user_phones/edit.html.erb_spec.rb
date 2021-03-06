require 'spec_helper'

describe "car_user_phones/edit.html.erb" do
  before(:each) do
    @car_user_phone = assign(:car_user_phone, stub_model(CarUserPhone,
      :name => "MyString"
    ))
  end

  it "renders the edit car_user_phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_user_phones_path(@car_user_phone), :method => "post" do
      assert_select "input#car_user_phone_name", :name => "car_user_phone[name]"
    end
  end
end
