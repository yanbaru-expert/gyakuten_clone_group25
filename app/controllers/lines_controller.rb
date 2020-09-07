class LinesController < ApplicationController
  def index
    @lines = Line.all
   
  end
  def show
    @line = Line.find(params[:id])
    Read.create(user_id:current_user.id,readable:@line)
  end
end
