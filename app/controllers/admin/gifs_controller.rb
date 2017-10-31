require 'net/http'
require 'json'

class Admin::GifsController < Admin::BaseController
  def new
    @gif = Gif.new
  end

  def create
  end

  def destroy
    gif = Gif.find(params[:id])
    gif.destroy
    redirect_to gifs_path
  end

  private

  def gif_params
    params.require(:gif).permit(:search_term, :image_path)
  end
end