require 'spec_helper'

describe "windows/edit.html.erb" do
  before(:each) do
    @window = assign(:window, stub_model(Window,
      :name => "MyString",
      :car_id => 1,
      :sub_car_id => 1
    ))
  end

  it "renders the edit window form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => windows_path(@window), :method => "post" do
      assert_select "input#window_name", :name => "window[name]"
      assert_select "input#window_car_id", :name => "window[car_id]"
      assert_select "input#window_sub_car_id", :name => "window[sub_car_id]"
    end
  end
end
