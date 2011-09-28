require 'spec_helper'

describe "cars/show.html.erb" do
  before(:each) do
    @car = assign(:car, stub_model(Car,
      :name => "Name",
      :type_id => 1,
      :sub_type_id => 1
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
