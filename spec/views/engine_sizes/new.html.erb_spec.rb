require 'spec_helper'

describe "engine_sizes/new.html.erb" do
  before(:each) do
    assign(:engine_size, stub_model(EngineSize,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new engine_size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => engine_sizes_path, :method => "post" do
      assert_select "input#engine_size_name", :name => "engine_size[name]"
    end
  end
end
