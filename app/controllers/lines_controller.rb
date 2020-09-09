class LinesController < ApplicationController

  def index
    @lines = Line.all
  end
  def show
    @line = Line.find(params[:id])
    current_user.reads.create(readable:@line)
  end

end
