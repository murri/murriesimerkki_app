require 'spec_helper'

describe "car_engine_sizes/edit.html.erb" do
  before(:each) do
    @car_engine_size = assign(:car_engine_size, stub_model(CarEngineSize,
      :name => "MyString"
    ))
  end

  it "renders the edit car_engine_size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_engine_sizes_path(@car_engine_size), :method => "post" do
      assert_select "input#car_engine_size_name", :name => "car_engine_size[name]"
    end
  end
end
