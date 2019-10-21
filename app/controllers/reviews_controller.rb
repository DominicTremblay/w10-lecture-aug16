class ReviewsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.new(review_params)
    
    if @review.save
      redirect_to @movie, notice: "Review created"
    else
      redirect_to @movie, notice: "Could not create the review"
    end


  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to @movie
  end

  def review_params
    params.require(:review).permit(
      :rating,
      :comment
    )
  end
end
