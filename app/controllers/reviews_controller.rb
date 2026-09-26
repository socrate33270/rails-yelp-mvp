class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
  def create
    @review = Review.new(form_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
    redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private
  def form_params
   params.expect(review: [ :rating, :content ])
  end
end
