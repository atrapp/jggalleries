class GalleriesController < ApplicationController

  before_action :set_gallery, only: [:show, :edit, :update, :destroy]

  def index
    @galleries = Gallery.all
  end

  def new
    @gallery = Gallery.new
  end

  def create
    gallery = Gallery.create( gallery_params )
    redirect_to gallery
  end

  def edit
  end

  def update
    if @gallery.update( gallery_params)
      @gallery.save
      redirect_to @gallery
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @gallery.destroy
    respond_to do |format|
      format.html { redirect_to galleries_url, notice: 'Gallery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_gallery
    @gallery = Gallery.find(params[:id])
  end

  def gallery_params
    params.require(:gallery).permit(:name, :caption)
  end

end
