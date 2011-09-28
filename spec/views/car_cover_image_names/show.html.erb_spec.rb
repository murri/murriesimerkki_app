require 'spec_helper'

describe "car_cover_image_names/show.html.erb" do
  before(:each) do
    @car_cover_image_name = assign(:car_cover_image_name, stub_model(CarCoverImageName,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
