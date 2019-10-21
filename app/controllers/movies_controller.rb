class MoviesController < ApplicationController
  def index
    @movies = Movie.order(created_at: :desc)
  end

  def show
    @movie = Movie.find(params[:id])
    @reviews = @movie.reviews
    @review = Review.new
    byebug
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end


  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def movie_params
    params.require(:movie).permit(
      :title,
      :description,
      :image_url,
      :director,
      :runtime_in_minutes,
      :date_release
    )

  end

end
