require 'spec_helper'

describe "moto_engine_types/new.html.erb" do
  before(:each) do
    assign(:moto_engine_type, stub_model(MotoEngineType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new moto_engine_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_engine_types_path, :method => "post" do
      assert_select "input#moto_engine_type_name", :name => "moto_engine_type[name]"
    end
  end
end
