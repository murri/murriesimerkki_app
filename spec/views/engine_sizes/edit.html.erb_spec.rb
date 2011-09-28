require 'spec_helper'

describe "engine_sizes/edit.html.erb" do
  before(:each) do
    @engine_size = assign(:engine_size, stub_model(EngineSize,
      :name => "MyString"
    ))
  end

  it "renders the edit engine_size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => engine_sizes_path(@engine_size), :method => "post" do
      assert_select "input#engine_size_name", :name => "engine_size[name]"
    end
  end
end
