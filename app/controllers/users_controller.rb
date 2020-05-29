class UsersController < ApplicationController
  def index
    @posts = current_user.posts.order("created_at DESC").page(params[:page]).per(16)
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page]).per(16)
    @like_posts = @user.like_posts.order("created_at DESC").page(params[:page]).per(16)
  end
end