class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    picture = Picture.create( picture_params )
    redirect_to picture_path(picture)
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def destroy
    @picture.image = nil
    @picture.save
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :item_id, :caption, :creation_date, :image)
  end

end
