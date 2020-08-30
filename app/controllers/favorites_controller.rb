class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.build(solution_id: params[:solution_id])
    favorite.save
    redirect_back(fallback_location: questions_path)
  end

  def destroy
    favorite = current_user.favorites.find_by(solution_id: params[:solution_id])
    favorite.destroy
    redirect_back(fallback_location: questions_path)
  end
end
