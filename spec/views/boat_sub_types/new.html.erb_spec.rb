require 'spec_helper'

describe "boat_sub_types/new.html.erb" do
  before(:each) do
    assign(:boat_sub_type, stub_model(BoatSubType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boat_sub_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_sub_types_path, :method => "post" do
      assert_select "input#boat_sub_type_name", :name => "boat_sub_type[name]"
    end
  end
end
