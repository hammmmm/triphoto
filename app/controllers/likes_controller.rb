class LikesController < ApplicationController
  before_action :set_post

  def create
    @like = current_user.likes.build(post_id: @post.id)
    @like.save
    redirect_to root_path
  end

  def destroy
    @like = Like.find_by(post_id: @post.id, user_id: current_user.id)
    @like.destroy
    redirect_to root_path
  end

  private
  def set_post
    @post = Post.find(params[:post_id])
  end
end
