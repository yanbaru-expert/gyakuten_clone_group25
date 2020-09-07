class LinesController < ApplicationController
  def index
    @lines = Line.all
    @line_reads=current_user.line_reads
  end
  def show
    @line = Line.find(params[:id])
    line_read = current_user.reads.new(readable: @line)
    line_read.save
  end
end
