require 'spec_helper'

describe "vehicles/new.html.erb" do
  before(:each) do
    assign(:vehicle, stub_model(Vehicle,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new vehicle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vehicles_path, :method => "post" do
      assert_select "input#vehicle_name", :name => "vehicle[name]"
    end
  end
end
