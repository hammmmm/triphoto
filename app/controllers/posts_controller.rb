class PostsController < ApplicationController
  before_action :move_to_index, except: [:index,:search]

  def index
    @posts = Post.includes(:user, :category, :country).order("created_at DESC").page(params[:page]).per(16)
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

  def search
    @posts = Post.joins(:country).where('country LIKE ?', "%#{params[:country]}%")
  end

  private
  def post_params
    params.require(:post).permit(:image, :category_id, :country_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
