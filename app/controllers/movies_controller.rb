class MoviesController < ApplicationController
  def index
    if params[:category].present?
      @movies = Movie.where(category: params[:category]).page(params[:page]).per(12)
    else
      @movies = Movie.select_movies.page(params[:page]).per(12)
    end
  end
end
