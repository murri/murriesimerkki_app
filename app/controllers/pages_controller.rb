class PagesController < ApplicationController
  def usage
  end

  def post
  end
  def dogs
end
def ad
end
  def images
end
def index
  @projects = Project.search(params[:search])
end



end
