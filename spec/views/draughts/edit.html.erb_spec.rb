require 'spec_helper'

describe "draughts/edit.html.erb" do
  before(:each) do
    @draught = assign(:draught, stub_model(Draught,
      :name => "MyString"
    ))
  end

  it "renders the edit draught form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => draughts_path(@draught), :method => "post" do
      assert_select "input#draught_name", :name => "draught[name]"
    end
  end
end
