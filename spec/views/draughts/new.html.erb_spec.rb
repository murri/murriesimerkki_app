require 'spec_helper'

describe "draughts/new.html.erb" do
  before(:each) do
    assign(:draught, stub_model(Draught,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new draught form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => draughts_path, :method => "post" do
      assert_select "input#draught_name", :name => "draught[name]"
    end
  end
end
