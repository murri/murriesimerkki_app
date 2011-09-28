require 'spec_helper'

describe "boat_user_names/new.html.erb" do
  before(:each) do
    assign(:boat_user_name, stub_model(BoatUserName,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boat_user_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_user_names_path, :method => "post" do
      assert_select "input#boat_user_name_name", :name => "boat_user_name[name]"
    end
  end
end
