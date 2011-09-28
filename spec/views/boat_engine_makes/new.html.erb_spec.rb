require 'spec_helper'

describe "boat_engine_makes/new.html.erb" do
  before(:each) do
    assign(:boat_engine_make, stub_model(BoatEngineMake,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boat_engine_make form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_engine_makes_path, :method => "post" do
      assert_select "input#boat_engine_make_name", :name => "boat_engine_make[name]"
    end
  end
end
