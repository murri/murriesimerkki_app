require 'spec_helper'

describe "moto_registration_numbers/edit.html.erb" do
  before(:each) do
    @moto_registration_number = assign(:moto_registration_number, stub_model(MotoRegistrationNumber,
      :name => "MyString"
    ))
  end

  it "renders the edit moto_registration_number form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_registration_numbers_path(@moto_registration_number), :method => "post" do
      assert_select "input#moto_registration_number_name", :name => "moto_registration_number[name]"
    end
  end
end
