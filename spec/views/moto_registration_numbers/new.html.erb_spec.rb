require 'spec_helper'

describe "moto_registration_numbers/new.html.erb" do
  before(:each) do
    assign(:moto_registration_number, stub_model(MotoRegistrationNumber,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new moto_registration_number form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_registration_numbers_path, :method => "post" do
      assert_select "input#moto_registration_number_name", :name => "moto_registration_number[name]"
    end
  end
end
