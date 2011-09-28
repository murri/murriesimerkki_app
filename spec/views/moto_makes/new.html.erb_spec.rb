require 'spec_helper'

describe "moto_makes/new.html.erb" do
  before(:each) do
    assign(:moto_make, stub_model(MotoMake,
      :name => "MyString",
      :sub_vehicle_id => 1
    ).as_new_record)
  end

  it "renders new moto_make form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_makes_path, :method => "post" do
      assert_select "input#moto_make_name", :name => "moto_make[name]"
      assert_select "input#moto_make_sub_vehicle_id", :name => "moto_make[sub_vehicle_id]"
    end
  end
end
