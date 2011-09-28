require 'spec_helper'

describe "engine_types/new.html.erb" do
  before(:each) do
    assign(:engine_type, stub_model(EngineType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new engine_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => engine_types_path, :method => "post" do
      assert_select "input#engine_type_name", :name => "engine_type[name]"
    end
  end
end
