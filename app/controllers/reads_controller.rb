class ReadsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    Read.create(user_id:current_user.id,readable:@movie)
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    read = Read.find_by(user_id:current_user.id,readable:@movie)
    read.destroy
  end
end
