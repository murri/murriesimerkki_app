require 'spec_helper'

describe "widths/new.html.erb" do
  before(:each) do
    assign(:width, stub_model(Width,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new width form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => widths_path, :method => "post" do
      assert_select "input#width_name", :name => "width[name]"
    end
  end
end
