require 'spec_helper'

describe "vehicles/edit.html.erb" do
  before(:each) do
    @vehicle = assign(:vehicle, stub_model(Vehicle,
      :name => "MyString"
    ))
  end

  it "renders the edit vehicle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vehicles_path(@vehicle), :method => "post" do
      assert_select "input#vehicle_name", :name => "vehicle[name]"
    end
  end
end
