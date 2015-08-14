class Api::ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      render json: @image
    else
      render json: @image.errors.full_messages
    end
  end

  def show
    @image = Image.find(params[:id])
  end

  private
  def image_params
    params.require(:image).permit(:url, :thumbnail_url)
  end
end
