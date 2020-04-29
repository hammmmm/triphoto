class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @categories = Category.all
    @countries = Country.all
  end
  
  def create
    Post.create(post_params)
    redirect_to posts_path
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  def edit
    @post = Post.find(params[:id])
    @categories = Category.all
    @countries = Country.all
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:image, :category_id, :country_id)
    # .merge(user_id: current_user.id)
  end
end
