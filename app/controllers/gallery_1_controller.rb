class Gallery1Controller < ApplicationController

  def index 
    @gallery_1_photos = Gallery1.all 
  end

  def show 
    @gallery_1_photo = Gallery1.find(params[:id])
  end

  def new 
    @gallery_1_photo = Gallery1.new 
  end 

  def create 
    @gallery_1_photo = Gallery1.(gallery_params)
    @gallery_1_photo.save 

  end

  def destroy 

  end

  def update 

  end

  private 

  def gallery_params
    params.require(:gallery_1).permit(:photo, :id, :description) 
  end
end
