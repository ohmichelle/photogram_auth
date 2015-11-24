class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @photos = Photo.all
  end

  def my_likes
    @photos = Photo.all
  end
end
