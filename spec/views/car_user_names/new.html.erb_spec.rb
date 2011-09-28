require 'spec_helper'

describe "car_user_names/new.html.erb" do
  before(:each) do
    assign(:car_user_name, stub_model(CarUserName,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_user_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_user_names_path, :method => "post" do
      assert_select "input#car_user_name_name", :name => "car_user_name[name]"
    end
  end
end
