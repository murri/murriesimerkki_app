require 'spec_helper'

describe "moto_user_names/edit.html.erb" do
  before(:each) do
    @moto_user_name = assign(:moto_user_name, stub_model(MotoUserName,
      :name => "MyString"
    ))
  end

  it "renders the edit moto_user_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_user_names_path(@moto_user_name), :method => "post" do
      assert_select "input#moto_user_name_name", :name => "moto_user_name[name]"
    end
  end
end
