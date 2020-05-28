class UsersController < ApplicationController
  def show
    @posts = current_user.posts.order("created_at DESC").page(params[:page]).per(16)
  end
end