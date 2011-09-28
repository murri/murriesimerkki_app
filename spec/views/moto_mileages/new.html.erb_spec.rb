require 'spec_helper'

describe "moto_mileages/new.html.erb" do
  before(:each) do
    assign(:moto_mileage, stub_model(MotoMileage,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new moto_mileage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_mileages_path, :method => "post" do
      assert_select "input#moto_mileage_name", :name => "moto_mileage[name]"
    end
  end
end
