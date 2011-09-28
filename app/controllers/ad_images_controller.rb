class AdImagesController < ApplicationController

=begin  
  def new
    @ad_image = AdImage.new
  end

  def create
    @ad_image = AdImage.new(params[:ad_image])
    if @ad_image.save
      redirect_to offer_ad_url(@ad_image.offer_ad)     
    else
      render :action => :new
    end
  end
=end
  
  def destroy
    @ad_image = AdImage.find(params[:id])
    @ad_image.destroy
  end

end
