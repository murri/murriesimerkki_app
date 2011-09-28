require 'spec_helper'

describe "registration_numbers/new.html.erb" do
  before(:each) do
    assign(:registration_number, stub_model(RegistrationNumber,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new registration_number form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => registration_numbers_path, :method => "post" do
      assert_select "input#registration_number_name", :name => "registration_number[name]"
    end
  end
end
