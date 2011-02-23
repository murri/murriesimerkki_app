require 'spec_helper'

describe "posts/new.html.erb" do
  before(:each) do
    assign(:post, stub_model(Post,
      :vehicle => "MyString",
      :make => "MyString",
      :model => "MyString"
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path, :method => "post" do
      assert_select "input#post_vehicle", :name => "post[vehicle]"
      assert_select "input#post_make", :name => "post[make]"
      assert_select "input#post_model", :name => "post[model]"
    end
  end
end
