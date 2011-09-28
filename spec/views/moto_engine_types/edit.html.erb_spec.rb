require 'spec_helper'

describe "moto_engine_types/edit.html.erb" do
  before(:each) do
    @moto_engine_type = assign(:moto_engine_type, stub_model(MotoEngineType,
      :name => "MyString"
    ))
  end

  it "renders the edit moto_engine_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_engine_types_path(@moto_engine_type), :method => "post" do
      assert_select "input#moto_engine_type_name", :name => "moto_engine_type[name]"
    end
  end
end
