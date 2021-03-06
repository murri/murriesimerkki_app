require 'spec_helper'

describe "ads/show.html.erb" do
  before(:each) do
    @ad = assign(:ad, stub_model(Ad,
      :type => "Type",
      :make => "Make",
      :model => "Model",
      :subtype => "Subtype",
      :color => "Color",
      :colortype => "Colortype",
      :price => "9.99",
      :registernumber => "Registernumber",
      :information => "MyText",
      :mileage => "Mileage",
      :enginesize => "9.99",
      :drivetype => "Drivetype",
      :fuel => "Fuel",
      :transmission => "Transmission",
      :power => "9.99",
      :emission => "Emission",
      :topspeed => "Topspeed",
      :acceleration => "9.99",
      :consumption => "9.99",
      :weight => "9.99",
      :domicile => "Domicile",
      :town => "Town"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Make/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Model/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Subtype/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Color/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Colortype/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Registernumber/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mileage/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Drivetype/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fuel/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Transmission/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Emission/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Topspeed/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Domicile/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Town/)
  end
end
