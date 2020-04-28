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
    if params[:image] != nil
      img = MiniMagick::Image.read(params[:image])
      img.resize_to_fill "128x128"
    end
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:image, :category_id, :country_id)
    # .merge(user_id: current_user.id)
  end
end
