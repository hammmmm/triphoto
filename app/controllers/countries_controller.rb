class CountriesController < ApplicationController
  def show
    country = Country.find(params[:id])
    @posts = country.posts.order("created_at DESC").page(params[:page]).per(16)
  end

  private
  def post_params
    params.require(:post).permit(:image, :category_id, :country_id).merge(user_id: current_user.id)
  end

end
