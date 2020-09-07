class LinesController < ApplicationController
  def index
    @lines = Line.all
    @line_reads=current_user.line_reads
  end
  def show
    @line = Line.find(params[:id])
    
    Read.create(line_id: @line.id, user_id: current_user.id)
  end
end
