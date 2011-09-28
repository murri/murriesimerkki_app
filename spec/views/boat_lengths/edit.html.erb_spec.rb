require 'spec_helper'

describe "boat_lengths/edit.html.erb" do
  before(:each) do
    @boat_length = assign(:boat_length, stub_model(BoatLength,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_length form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_lengths_path(@boat_length), :method => "post" do
      assert_select "input#boat_length_name", :name => "boat_length[name]"
    end
  end
end
