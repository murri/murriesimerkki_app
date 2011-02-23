require 'spec_helper'

describe "posts/edit.html.erb" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :vehicle => "MyString",
      :make => "MyString",
      :model => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path(@post), :method => "post" do
      assert_select "input#post_vehicle", :name => "post[vehicle]"
      assert_select "input#post_make", :name => "post[make]"
      assert_select "input#post_model", :name => "post[model]"
    end
  end
end
