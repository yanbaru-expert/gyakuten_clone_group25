class ChecksController < ApplicationController
  def create
    @movie=Movie.find(params[:movie_id])
    Check.create(user_id:current_user.id,checkable:@movie)
  end
  
  def destroy
    @movie=Movie.find(params[:movie_id])
    check=Check.find_by(user_id:current_user.id,checkable:@movie)
    check.destroy
  end
end
