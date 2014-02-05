class Gallery1Controller < ApplicationController

  def index 
    @gallery_1_photos = Gallery_1.all 
  end

end
