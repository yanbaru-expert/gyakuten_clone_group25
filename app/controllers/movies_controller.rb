class MoviesController < ApplicationController
  def index
    @movies = Movie.all.page(params[:page]).per(18)
  end
end
