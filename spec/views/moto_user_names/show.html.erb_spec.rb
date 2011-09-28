require 'spec_helper'

describe "moto_user_names/show.html.erb" do
  before(:each) do
    @moto_user_name = assign(:moto_user_name, stub_model(MotoUserName,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
