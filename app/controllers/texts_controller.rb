class TextsController < ApplicationController
  def index
    path = request.fullpath
    @trigger = path if path == root_path
    @q = Text.ransack(params[:q])
    @texts = @q.result(distinct: true)
  end

  def show
    @texts = Text.find(params[:id])
  end
end
