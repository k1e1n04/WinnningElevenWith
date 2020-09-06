class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @review=Review.find(params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def review_params
    params.require(:review).permit(:player_id, :score, :content, :user_id)
  end
end
