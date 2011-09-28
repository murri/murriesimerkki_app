require 'spec_helper'

describe "weights/edit.html.erb" do
  before(:each) do
    @weight = assign(:weight, stub_model(Weight,
      :name => "MyString"
    ))
  end

  it "renders the edit weight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => weights_path(@weight), :method => "post" do
      assert_select "input#weight_name", :name => "weight[name]"
    end
  end
end
