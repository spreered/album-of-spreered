class PhotosController < ApplicationController
  before_action :set_photo,  only: [:show,:edit,:destroy,:update]
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end
  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photos_url
    else
      render :new
    end
  end
  def show
    
  end
  def edit
  end
  def update
    if @photo.update_attributes(photo_params)
      redirect_to photos_path
    else
      render :edit
    end
  end
  def destroy
    @photo.destroy
    redirect_to photos_url
  end


  private
  def photo_params
    params.require(:photo).permit(:title,:date,:description,:file_location)
  end
  def set_photo
    @photo = Photo.find(params[:id])
  end


end
