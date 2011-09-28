require 'spec_helper'

describe "moto_models/show.html.erb" do
  before(:each) do
    @moto_model = assign(:moto_model, stub_model(MotoModel,
      :name => "Name",
      :moto_make_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
