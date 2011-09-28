require 'spec_helper'

describe "windows/show.html.erb" do
  before(:each) do
    @window = assign(:window, stub_model(Window,
      :name => "Name",
      :car_id => 1,
      :sub_car_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
