require 'spec_helper'

describe "car_user_phones/new.html.erb" do
  before(:each) do
    assign(:car_user_phone, stub_model(CarUserPhone,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_user_phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_user_phones_path, :method => "post" do
      assert_select "input#car_user_phone_name", :name => "car_user_phone[name]"
    end
  end
end
