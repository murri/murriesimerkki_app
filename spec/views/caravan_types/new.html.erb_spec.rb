require 'spec_helper'

describe "caravan_types/new.html.erb" do
  before(:each) do
    assign(:caravan_type, stub_model(CaravanType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new caravan_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_types_path, :method => "post" do
      assert_select "input#caravan_type_name", :name => "caravan_type[name]"
    end
  end
end
