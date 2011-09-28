require 'spec_helper'

describe "caravan_types/edit.html.erb" do
  before(:each) do
    @caravan_type = assign(:caravan_type, stub_model(CaravanType,
      :name => "MyString"
    ))
  end

  it "renders the edit caravan_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_types_path(@caravan_type), :method => "post" do
      assert_select "input#caravan_type_name", :name => "caravan_type[name]"
    end
  end
end
