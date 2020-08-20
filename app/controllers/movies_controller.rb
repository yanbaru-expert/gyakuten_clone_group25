class MoviesController < ApplicationController
  def index
    @movies = Movie.select_movies(params[:category]).page(params[:page]).per(12)
  end
end
