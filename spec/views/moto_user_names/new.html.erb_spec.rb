require 'spec_helper'

describe "moto_user_names/new.html.erb" do
  before(:each) do
    assign(:moto_user_name, stub_model(MotoUserName,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new moto_user_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_user_names_path, :method => "post" do
      assert_select "input#moto_user_name_name", :name => "moto_user_name[name]"
    end
  end
end
