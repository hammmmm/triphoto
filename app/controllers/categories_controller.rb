class CategoriesController < ApplicationController
  def show
    category = Category.find(params[:id])
    @posts = category.posts.order("created_at DESC").page(params[:page]).per(16)
  end
end
