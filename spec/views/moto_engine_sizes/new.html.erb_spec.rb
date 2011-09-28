require 'spec_helper'

describe "moto_engine_sizes/new.html.erb" do
  before(:each) do
    assign(:moto_engine_size, stub_model(MotoEngineSize,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new moto_engine_size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_engine_sizes_path, :method => "post" do
      assert_select "input#moto_engine_size_name", :name => "moto_engine_size[name]"
    end
  end
end
