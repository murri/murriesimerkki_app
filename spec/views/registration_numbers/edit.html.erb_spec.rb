require 'spec_helper'

describe "registration_numbers/edit.html.erb" do
  before(:each) do
    @registration_number = assign(:registration_number, stub_model(RegistrationNumber,
      :name => "MyString"
    ))
  end

  it "renders the edit registration_number form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => registration_numbers_path(@registration_number), :method => "post" do
      assert_select "input#registration_number_name", :name => "registration_number[name]"
    end
  end
end
