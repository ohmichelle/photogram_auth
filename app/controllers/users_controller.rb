class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @photos = Photo.all
    @comment = Comment.new
  end

  def my_likes
    @user_likes = current_user.liked_photos
    @photos = Photo.all
    @comment = Comment.new
    #@photos = Photo.all
  end
end
