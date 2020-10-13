class LikeMoviesController < ApplicationController
  def create
    like_movie = current_user.like_movies.build(movie_id: params[:movie_id])
    like_movie.save
    redirect_to movies_path
  end

  def destroy
    like_movie = current_user.like_movies.find_by(movie_id: params[:movie_id])
    like_movie.destroy
    redirect_to movies_path
  end
end
