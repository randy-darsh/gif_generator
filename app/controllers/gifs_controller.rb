class GifsController < ApplicationController

  def index
    @gifs = Gif.all
  end

  def create
    user = User.find(params[:user_id])
    gif = Gif.find(params["gif_id"])
    user.favorite(gif)
    flash[:notice] = "IT'S YOUR FAVORITE!"
    redirect_to gifs_path
  end

  def destroy
    user = User.find(params[:user_id])
    gif = Gif.find(params[:id])
    user.unfavorite(gif)
    flash[:notice] = "IT'S NOT YOUR FAVORITE!"
    redirect_to user_gifs_path(user)
  end

  private

  def check_user
    if current_user != @user
      redirect_to root_path
    else
      @gifs = @user.gifs.all
    end
  end
end