class ChecksController < ApplicationController
  def create
    @movie=Movie.find_by(id: params[:movie_id])
    Check.create(user_id:current_user.id,checkable:@movie)
    redirect_back(fallback_location: movies_path)
  end
  
  def destroy
    @movie=Movie.find_by(id: params[:movie_id])
    check=Check.find_by(user_id:current_user.id,checkable:@movie)
    check.destroy
    redirect_back(fallback_location: movies_path)
  end
end
