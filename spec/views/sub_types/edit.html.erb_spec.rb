require 'spec_helper'

describe "sub_types/edit.html.erb" do
  before(:each) do
    @sub_type = assign(:sub_type, stub_model(SubType,
      :name => "MyString",
      :type_id => 1
    ))
  end

  it "renders the edit sub_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sub_types_path(@sub_type), :method => "post" do
      assert_select "input#sub_type_name", :name => "sub_type[name]"
      assert_select "input#sub_type_type_id", :name => "sub_type[type_id]"
    end
  end
end
