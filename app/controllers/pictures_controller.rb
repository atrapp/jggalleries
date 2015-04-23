class PicturesController < ApplicationController

  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  before_action :set_galleries, only: [:new, :edit]

  def index
    @pictures = Picture.all.order("item_id ASC")
  end

  def new
    @picture = Picture.new
  end

  def create
    picture = Picture.create( picture_params )
    redirect_to picture
  end

  def edit
  end

  def update
    # this is needed so uncheck all galleries also work properly
    params[:picture][:gallery_ids] ||= []

    if @picture.update( picture_params )
      @picture.save
      redirect_to @picture
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @picture.destroy
    respond_to do |format|
      format.html { redirect_to pictures_url, notice: 'Picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def delete_image
    @picture.image = nil
    @picture.save
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_picture
    @picture = Picture.find(params[:id])
  end
  private

  def set_galleries
    @galleries = Gallery.all.order("name ASC")
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def picture_params
    params.require(:picture).permit(:title, :item_id, :caption, :creation_date, :image, :gallery_ids => [])
  end

end
