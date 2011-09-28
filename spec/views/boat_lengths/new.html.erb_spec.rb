require 'spec_helper'

describe "boat_lengths/new.html.erb" do
  before(:each) do
    assign(:boat_length, stub_model(BoatLength,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boat_length form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_lengths_path, :method => "post" do
      assert_select "input#boat_length_name", :name => "boat_length[name]"
    end
  end
end
