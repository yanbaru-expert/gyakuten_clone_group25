class TextsController < ApplicationController
  def index
    path = request.fullpath
    @trigger = path if path == root_path
    @texts = Text.all
  end

  def show
    @texts = Text.find(params[:id])
  end
end
